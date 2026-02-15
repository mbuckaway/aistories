#!/usr/bin/env bash
#
# Assemble a story for publishing to GitHub Pages.
# Creates two versions in the pages/ directory:
#   1. Full version: preamble + prompt + story + copyright
#   2. Medium version: preamble + prompt + story (no copyright)
#
set -euo pipefail

usage() {
    cat <<'EOF'
Usage: publish_story.sh -d <story-dir> [options]

Options:
  -d DIR    Story directory (e.g., gambit) (required)
  -f FILE   Story file within the directory (auto-detected if omitted)
  -p FILE   Preamble file (default: common/preamble.md)
  -r FILE   Prompt file (default: <story-dir>/story-prompt.md)
  -c FILE   Copyright file (default: common/LICENSE-CC-BY-NC-4.0.md)
  -h        Show this help message

The script auto-detects the story file by finding the .md file in the
story directory that is not story-prompt.md, preamble.md, or a LICENSE file.

Examples:
  publish_story.sh -d gambit
  publish_story.sh -d gambit -p gambit/custom-preamble.md
EOF
}

DIR=""
STORY_FILE=""
PREAMBLE="common/preamble.md"
PROMPT=""
COPYRIGHT="common/LICENSE-CC-BY-NC-4.0.md"

while getopts ":d:f:p:r:c:h" opt; do
    case "${opt}" in
        d) DIR="${OPTARG}" ;;
        f) STORY_FILE="${OPTARG}" ;;
        p) PREAMBLE="${OPTARG}" ;;
        r) PROMPT="${OPTARG}" ;;
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
if [[ -z "${STORY_FILE}" ]]; then
    STORY_FILE=$(find "${DIR}" -maxdepth 1 -name '*.md' \
        ! -name 'story-prompt.md' \
        ! -name 'image-prompt.md' \
        ! -name 'preamble.md' \
        ! -name 'LICENSE*' \
        -print -quit)
    if [[ -z "${STORY_FILE}" ]]; then
        echo "Error: No story .md file found in ${DIR}" >&2
        exit 1
    fi
fi

if [[ ! -f "${STORY_FILE}" ]]; then
    echo "Error: Story file not found: ${STORY_FILE}" >&2
    exit 1
fi

# Default prompt file to <story-dir>/story-prompt.md.
if [[ -z "${PROMPT}" ]]; then
    PROMPT="${DIR}/story-prompt.md"
fi

# Validate required files.
if [[ ! -f "${PREAMBLE}" ]]; then
    echo "Error: Preamble file not found: ${PREAMBLE}" >&2
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

# --- Build the full version (preamble + prompt + story + copyright) ---

# Write front matter.
cat > "${FULL_PAGE}" <<FRONTMATTER
---
layout: default
title: "${TITLE}"
description: "${TAGLINE}"
---

FRONTMATTER

# Append preamble (skip the # Preamble heading).
tail -n +2 "${PREAMBLE}" >> "${FULL_PAGE}"
echo "" >> "${FULL_PAGE}"

# Append prompt if it exists.
if [[ -f "${PROMPT}" ]]; then
    cat "${PROMPT}" >> "${FULL_PAGE}"
    echo "" >> "${FULL_PAGE}"
fi

# Insert audio player if an audio file exists.
if [[ -n "${AUDIO_BASENAME}" ]]; then
    cat >> "${FULL_PAGE}" <<AUDIO

---

<audio controls>
  <source src="${AUDIO_BASENAME}" type="audio/mp4">
  Your browser does not support the audio element.
</audio>

AUDIO
fi

# Append story (skip the title, tagline, and byline since they're in the
# front matter / preamble — start from the first --- separator).
awk 'found { print } /^---$/ && !found { found=1 }' "${STORY_FILE}" >> "${FULL_PAGE}"

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

# Title and subtitle.
echo "# ${TITLE}" >> "${MEDIUM_PAGE}"
echo "" >> "${MEDIUM_PAGE}"

if [[ -n "${TAGLINE}" ]]; then
    echo "### *${TAGLINE}*" >> "${MEDIUM_PAGE}"
    echo "" >> "${MEDIUM_PAGE}"
fi

# Insert featured image if present.
if [[ -n "${IMAGE_BASENAME}" ]]; then
    echo "![${TITLE}](${IMAGE_BASENAME})" >> "${MEDIUM_PAGE}"
    echo "" >> "${MEDIUM_PAGE}"
fi

# Append preamble (skip the # Preamble heading).
tail -n +2 "${PREAMBLE}" >> "${MEDIUM_PAGE}"
echo "" >> "${MEDIUM_PAGE}"

# Append prompt if it exists.
if [[ -f "${PROMPT}" ]]; then
    cat "${PROMPT}" >> "${MEDIUM_PAGE}"
    echo "" >> "${MEDIUM_PAGE}"
fi

# Append story (skip the title, tagline, and byline — start from first ---).
awk 'found { print } /^---$/ && !found { found=1 }' "${STORY_FILE}" >> "${MEDIUM_PAGE}"

echo ""
echo "Published: ${FULL_PAGE}"
echo "  Medium:  ${MEDIUM_PAGE}"
echo "  Title:   ${TITLE}"
if [[ -n "${AUDIO_BASENAME}" ]]; then
    echo "  Audio:   pages/${AUDIO_BASENAME}"
fi
if [[ -n "${IMAGE_BASENAME}" ]]; then
    echo "  Image:   pages/${IMAGE_BASENAME}"
fi
