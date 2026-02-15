---
name: revise-story
description: Revise an existing story based on changes to its story-prompt.md
disable-model-invocation: true
argument-hint: <story-directory>
---

Revise an existing story based on updated instructions in its `story-prompt.md`.

## Steps

1. Read `$ARGUMENTS/story-prompt.md` to get the current prompt with any new or changed instructions.
2. Run `git diff $ARGUMENTS/story-prompt.md` to see what changed in the prompt. If there is no git diff (changes already committed), run `git log -1 -p -- $ARGUMENTS/story-prompt.md` to see the most recent change.
3. Read the existing story file in `$ARGUMENTS/` (the `.md` file that is not `story-prompt.md`, `preamble.md`, or `LICENSE-*`).
4. Read `CLAUDE.md` for writing conventions.
5. Rewrite the story, applying the prompt changes to the existing narrative. Preserve the story's structure, characters, plot, and tone — only modify what the prompt changes require. If the prompt changes are sweeping (e.g., change the setting entirely), rewrite accordingly while keeping the core narrative intact.
6. Write the revised story back to the same file, using the same format.

## Story Format

The story file must begin with this header structure:

```markdown
# Story Title

### *One-line tagline in italics*

### A Story by Claude & Mark Buckaway

---
```

If the prompt specifies a title or subtitle, use those. Otherwise keep the existing ones.

Then the story body, divided into titled parts using `## Part Name` headings, separated by `---` horizontal rules.

End the story with `*fin.*`

## Guidelines

- Apply prompt changes faithfully — if the prompt says to change the setting, characters, or plot elements, do so thoroughly and consistently throughout the entire story.
- Maintain the same literary quality, pacing, and length as the original.
- Default writing conventions from CLAUDE.md apply unless the prompt explicitly overrides them (e.g., "set the story in the US" overrides the Canadian setting convention).
- Do not include any AI branding, tool mentions, or meta-commentary in the story file.

## After Writing

Tell the user the story has been revised, summarize what changed, and suggest they review it. Do not commit, publish, or run any other scripts automatically.
