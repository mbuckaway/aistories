---
name: publish-story
description: Publish a story to GitHub Pages with preamble, prompt, and copyright
disable-model-invocation: true
argument-hint: -d <story-directory> [options]
---

Publish a story from the given directory to GitHub Pages.

## Steps

1. Run the publish script to assemble both page versions:
   ```
   bash scripts/publish_story.sh $ARGUMENTS
   ```
2. Verify the generated files in `pages/` look correct (preamble at top, copyright at bottom of full version; preamble but no copyright in medium version).
3. Stage and commit the changed files under `pages/` and any modified source files.
4. Push to origin.
5. Watch the GitHub Actions deployment with `gh run watch` until it succeeds.
6. Verify the live pages by checking for expected content with `curl -s`.

## Important

- Never include Co-Authored-By lines or any AI branding in commits.
- The story directory (e.g., `gambit`) must contain the story `.md` file and a `story-prompt.md`.
- Common files `common/preamble.md` and `common/LICENSE-CC-BY-NC-4.0.md` must exist.
