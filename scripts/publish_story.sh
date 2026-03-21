#!/usr/bin/env bash
#
# Assemble a story for publishing to GitHub Pages.
# Creates two versions in the pages/ directory:
#   1. Full version: story + postamble + copyright
#   2. Medium version: story + postamble (no copyright)
#
set -euo pipefail

usage() {
    cat <<'EOF'
Usage: publish_story.sh -d <story-dir> [options]

Options:
  -d DIR    Story directory (e.g., gambit) (required)
  -f FILE   Story file within the directory (auto-detected if omitted)
  -p FILE   Postamble file (default: common/postamble.md)
  -c FILE   Copyright file (default: common/LICENSE-CC-BY-NC-4.0.md)
  -h        Show this help message

The script auto-detects the story file by finding the .md file in the
story directory that is not story-prompt.md, postamble.md, or a LICENSE file.

Examples:
  publish_story.sh -d gambit
  publish_story.sh -d gambit -p gambit/custom-postamble.md
EOF
}

DIR=""
STORY_FILE=""
POSTAMBLE="common/postamble.md"
COPYRIGHT="common/LICENSE-CC-BY-NC-4.0.md"

while getopts ":d:f:p:c:h" opt; do
    case "${opt}" in
        d) DIR="${OPTARG}" ;;
        f) STORY_FILE="${OPTARG}" ;;
        p) POSTAMBLE="${OPTARG}" ;;
        c) COPYRIGHT="${OPTARG}" ;;
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

if [[ -z "${DIR}" ]]; then
    echo "Error: -d is required." >&2
    usage >&2
    exit 1
fi

if [[ ! -d "${DIR}" ]]; then
    echo "Error: Directory not found: ${DIR}" >&2
    exit 1
fi

# Auto-detect story file if not specified.
# Preferred: the story file has the same basename as its directory.
# Fallback: find the single non-utility .md file in the directory.
if [[ -z "${STORY_FILE}" ]]; then
    DIR_BASENAME=$(basename "${DIR}")
    if [[ -f "${DIR}/${DIR_BASENAME}.md" ]]; then
        STORY_FILE="${DIR}/${DIR_BASENAME}.md"
    else
        STORY_FILE=$(find "${DIR}" -maxdepth 1 -name '*.md' \
            ! -name 'story-prompt.md' \
            ! -name 'image-prompt.md' \
            ! -name 'postamble.md' \
            ! -name 'story-outline*.md' \
            ! -name 'plausibility_assessment.md' \
            ! -name 'reviewed.md' \
            ! -name 'null_response.md' \
            ! -name 'LICENSE*' \
            -print -quit)
        if [[ -z "${STORY_FILE}" ]]; then
            echo "Error: No story .md file found in ${DIR}" >&2
            echo "Use -f to specify the story file explicitly." >&2
            exit 1
        fi
    fi
fi

if [[ ! -f "${STORY_FILE}" ]]; then
    echo "Error: Story file not found: ${STORY_FILE}" >&2
    exit 1
fi

# Validate required files.
if [[ ! -f "${POSTAMBLE}" ]]; then
    echo "Error: Postamble file not found: ${POSTAMBLE}" >&2
    exit 1
fi

if [[ ! -f "${COPYRIGHT}" ]]; then
    echo "Error: Copyright file not found: ${COPYRIGHT}" >&2
    exit 1
fi

# Extract title from first # heading in the story.
TITLE=$(grep -m1 '^# ' "${STORY_FILE}" | sed 's/^# //')
if [[ -z "${TITLE}" ]]; then
    echo "Error: Could not extract title from ${STORY_FILE}" >&2
    exit 1
fi

# Extract tagline from the ### *...* line if present.
TAGLINE=$(grep -m1 '^### \*' "${STORY_FILE}" | sed 's/^### \*//' | sed 's/\*$//') || true

BASENAME=$(basename "${STORY_FILE}" .md)
FULL_PAGE="pages/${BASENAME}.md"
MEDIUM_PAGE="pages/${BASENAME}_medium.md"

# Check for an audio file (.m4a) in the story directory.
AUDIO_FILE=$(find "${DIR}" -maxdepth 1 -name '*.m4a' -print -quit)
AUDIO_BASENAME=""
if [[ -n "${AUDIO_FILE}" ]]; then
    AUDIO_BASENAME=$(basename "${AUDIO_FILE}")
fi

# Check for a featured image (.png) matching the story file name.
IMAGE_FILE="${DIR}/${BASENAME}.png"
IMAGE_BASENAME=""
if [[ -f "${IMAGE_FILE}" ]]; then
    IMAGE_BASENAME="${BASENAME}.png"
fi

mkdir -p pages

# Copy audio file to pages/ if present.
if [[ -n "${AUDIO_FILE}" ]]; then
    cp "${AUDIO_FILE}" "pages/${AUDIO_BASENAME}"
    echo "Audio:     pages/${AUDIO_BASENAME}"
fi

# Copy featured image to pages/ if present.
if [[ -n "${IMAGE_BASENAME}" ]]; then
    cp "${IMAGE_FILE}" "pages/${IMAGE_BASENAME}"
    echo "Image:     pages/${IMAGE_BASENAME}"
fi

# --- Build the full version (story + postamble + copyright) ---

# Write front matter.
cat > "${FULL_PAGE}" <<FRONTMATTER
---
layout: default
title: "${TITLE}"
description: "${TAGLINE}"
---

FRONTMATTER

# Insert audio player if an audio file exists.
if [[ -n "${AUDIO_BASENAME}" ]]; then
    cat >> "${FULL_PAGE}" <<AUDIO

<audio controls>
  <source src="${AUDIO_BASENAME}" type="audio/mp4">
  Your browser does not support the audio element.
</audio>

---

AUDIO
fi

# Append story (skip the title, tagline, and byline — start from the first --- separator).
awk 'found { print } /^---$/ && !found { found=1 }' "${STORY_FILE}" >> "${FULL_PAGE}"

# Append postamble (skip the # Post Amble heading).
echo "" >> "${FULL_PAGE}"
tail -n +2 "${POSTAMBLE}" >> "${FULL_PAGE}"
echo "" >> "${FULL_PAGE}"

# Append copyright.
echo "" >> "${FULL_PAGE}"
cat "${COPYRIGHT}" >> "${FULL_PAGE}"

# Add link to the Medium version.
cat >> "${FULL_PAGE}" <<EOF

---

[View the story without copyright (for Medium import)](${BASENAME}_medium)
EOF

# --- Build the Medium version (HTML via layout: null, no theme, no copyright) ---

# Write front matter with layout: null to skip the Cayman theme.
cat > "${MEDIUM_PAGE}" <<'FRONTMATTER'
---
layout: null
---

FRONTMATTER

# Insert image link above title if present.
if [[ -n "${IMAGE_BASENAME}" ]]; then
    echo "**Image link:** https://mbuckaway.github.io/aistories/${IMAGE_BASENAME}" >> "${MEDIUM_PAGE}"
    echo "" >> "${MEDIUM_PAGE}"
fi

# Title and subtitle.
echo "# ${TITLE}" >> "${MEDIUM_PAGE}"
echo "" >> "${MEDIUM_PAGE}"

if [[ -n "${TAGLINE}" ]]; then
    echo "### *${TAGLINE}*" >> "${MEDIUM_PAGE}"
    echo "" >> "${MEDIUM_PAGE}"
fi

# Append story (skip the title, tagline, and byline — start from first ---).
awk 'found { print } /^---$/ && !found { found=1 }' "${STORY_FILE}" >> "${MEDIUM_PAGE}"

# Append postamble (skip the # Post Amble heading).
echo "" >> "${MEDIUM_PAGE}"
tail -n +2 "${POSTAMBLE}" >> "${MEDIUM_PAGE}"

# --- Update index.md with the story entry ---

INDEX_PAGE="pages/index.md"
ENTRY_LINE="- [${TITLE}](${BASENAME}) — *${TAGLINE}*"
MEDIUM_LINE="  ([Medium version](${BASENAME}_medium))"

if [[ -f "${INDEX_PAGE}" ]]; then
    # Check if this story is already listed (match by basename link).
    if grep -qF "(${BASENAME})" "${INDEX_PAGE}"; then
        # Replace the existing entry (the link line and the Medium line after it).
        # Use a temp file to do a multi-line replacement.
        awk -v base="(${BASENAME})" -v entry="${ENTRY_LINE}" -v medium="${MEDIUM_LINE}" '
            $0 ~ base && /^- \[/ {
                print entry
                print medium
                # Skip the next line if it is the Medium version link.
                if ((getline nxt) > 0 && nxt !~ /^[[:space:]]+\(\[Medium/) print nxt
                next
            }
            { print }
        ' "${INDEX_PAGE}" > "${INDEX_PAGE}.tmp"
        mv "${INDEX_PAGE}.tmp" "${INDEX_PAGE}"
        echo "Index:     updated existing entry in ${INDEX_PAGE}"
    else
        # Append a new entry at the end of the file.
        echo "${ENTRY_LINE}" >> "${INDEX_PAGE}"
        echo "${MEDIUM_LINE}" >> "${INDEX_PAGE}"
        echo "Index:     added new entry to ${INDEX_PAGE}"
    fi
else
    echo "Warning: ${INDEX_PAGE} not found, skipping index update." >&2
fi

echo ""
echo "Published: ${FULL_PAGE}"
echo "  Medium:  ${MEDIUM_PAGE}"
echo "  Title:   ${TITLE}"
echo "  Index:   ${INDEX_PAGE}"
if [[ -n "${AUDIO_BASENAME}" ]]; then
    echo "  Audio:   pages/${AUDIO_BASENAME}"
fi
if [[ -n "${IMAGE_BASENAME}" ]]; then
    echo "  Image:   pages/${IMAGE_BASENAME}"
fi
