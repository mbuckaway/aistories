#!/usr/bin/env bash
#
# Convert a Markdown story file to an M4A audio file using macOS
# text-to-speech. Uses the current system voice by default.
#
set -euo pipefail

usage() {
    cat <<'EOF'
Usage: story_to_audio.sh -f <markdown-file> [options]

Options:
  -f FILE   Path to the Markdown story file (required)
  -o FILE   Output M4A file path (default: same name as input with .m4a)
  -v VOICE  Voice to use (default: current system voice)
  -r WPM    Speech rate in words per minute (default: system default)
  -l        List all available voices and exit
  -h        Show this help message

Examples:
  story_to_audio.sh -f gambit/the_confabulators_gambit.md
  story_to_audio.sh -f gambit/the_confabulators_gambit.md -o story.m4a
  story_to_audio.sh -f gambit/the_confabulators_gambit.md -v Samantha
  story_to_audio.sh -l
EOF
}

strip_markdown() {
    # Strip markdown formatting so say doesn't read syntax characters aloud.
    # Removes: headings (#), bold/italic (*/_), horizontal rules (---),
    # links [text](url) -> text, images ![alt](url) -> alt, code fences,
    # and leading > blockquotes.
    sed -E \
        -e 's/^#{1,6}[[:space:]]+//' \
        -e 's/^[[:space:]]*[-*_]{3,}[[:space:]]*$//' \
        -e 's/\*{1,3}([^*]+)\*{1,3}/\1/g' \
        -e 's/_{1,3}([^_]+)_{1,3}/\1/g' \
        -e 's/!\[([^]]*)\]\([^)]*\)/\1/g' \
        -e 's/\[([^]]*)\]\([^)]*\)/\1/g' \
        -e 's/^>[[:space:]]*//' \
        -e '/^```/d'
}

FILE=""
OUTPUT=""
VOICE=""
RATE=""

while getopts ":f:o:v:r:lh" opt; do
    case "${opt}" in
        f) FILE="${OPTARG}" ;;
        o) OUTPUT="${OPTARG}" ;;
        v) VOICE="${OPTARG}" ;;
        r) RATE="${OPTARG}" ;;
        l) say -v '?'; exit 0 ;;
        h) usage; exit 0 ;;
        :)
            echo "Error: -${OPTARG} requires an argument." >&2
            usage >&2
            exit 1
            ;;
        *)
            echo "Error: Unknown option: -${OPTARG}" >&2
            usage >&2
            exit 1
            ;;
    esac
done

if [[ -z "${FILE}" ]]; then
    echo "Error: -f is required." >&2
    usage >&2
    exit 1
fi

if [[ ! -f "${FILE}" ]]; then
    echo "Error: File not found: ${FILE}" >&2
    exit 1
fi

if [[ -z "${OUTPUT}" ]]; then
    OUTPUT="${FILE%.md}.m4a"
fi

# Build the say command arguments.
SAY_ARGS=()

if [[ -n "${VOICE}" ]]; then
    SAY_ARGS+=(-v "${VOICE}")
fi

if [[ -n "${RATE}" ]]; then
    SAY_ARGS+=(-r "${RATE}")
fi

SAY_ARGS+=(-o "${OUTPUT}" --file-format=m4af --data-format=aac --quality=127 --bit-rate=192000)

# Strip markdown formatting before passing to say.
TMPFILE="$(mktemp)"
trap 'rm -f "${TMPFILE}"' EXIT

strip_markdown < "${FILE}" > "${TMPFILE}"

echo "Converting: ${FILE}"
if [[ -n "${VOICE}" ]]; then
    echo "Voice:      ${VOICE}"
else
    echo "Voice:      (system default)"
fi
echo "Output:     ${OUTPUT}"
echo ""

say "${SAY_ARGS[@]}" -f "${TMPFILE}"

echo "Done."
