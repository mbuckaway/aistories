---
name: write-story
description: Write a new fiction story from a story-prompt.md in a given directory
disable-model-invocation: true
argument-hint: <story-directory>
model: sonnet
allowed-tools: Read, Glob, Grep, Write, Edit
---

Write a new fiction story based on the prompt and outline in the given directory.

## Steps

1. Read `$ARGUMENTS/story-prompt.md` to get the creative prompt.
2. If `$ARGUMENTS/story-outline.md` exists, read it — it is the authoritative source for the title, subtitle, plot structure, characters, character arcs, setting, themes, and narrative devices. Follow it faithfully. If it does not exist, proceed from the prompt alone.
3. Read `CLAUDE.md` for writing conventions.
4. Read `common/format.md` — this is the canonical story format reference. Follow it exactly for file structure, header block, part headings, prose style, and ending.
5. Write the story to `$ARGUMENTS/<story_name>.md`. Use the title and subtitle from the outline if present; otherwise derive them from the prompt.

## Writing Conventions

- Set the story in **Toronto, Canada** unless the prompt specifies otherwise.
- Use Canadian institutions (DND, RCMP, OSC, parliamentary committees), Canadian geography (Toronto, Ottawa, Calgary, Vancouver, etc.), and Canadian cultural context.
- Use Canadian spelling (colour, centre, defence, licence).
- Population reference: forty million people (Canada), not three hundred million.
- Currency: Canadian dollars. Stock exchange: TSX (opens 9:30 AM ET).
- Write in a literary fiction style — vivid, grounded, character-driven.
- Do not include any AI branding, tool mentions, or meta-commentary in the story file.
- Target length is set in the outline; if unspecified, aim for 8,000–15,000 words.

## After Writing

Tell the user the story is written and suggest they review it. Do not commit, publish, or run any other scripts automatically.
