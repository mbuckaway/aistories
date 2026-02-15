---
name: write-story
description: Write a new fiction story from a story-prompt.md in a given directory
disable-model-invocation: true
argument-hint: <story-directory>
---

Write a new fiction story based on the prompt in `$ARGUMENTS/story-prompt.md`.

## Steps

1. Read `$ARGUMENTS/story-prompt.md` to get the creative prompt.
2. Read `CLAUDE.md` for writing conventions.
3. Read `common/preamble.md` to understand the preamble format.
4. Look at an existing story (e.g., `gambit/the_confabulators_gambit.md`) as a reference for structure, tone, length, and formatting.
5. Write the story to `$ARGUMENTS/<story_name>.md` using the format below.

## Story Format

The story file must begin with this header structure:

```markdown
# Story Title

### *One-line tagline in italics*

### A Story by Claude & Mark Buckaway

---
```

Then the story body, divided into titled parts using `## Part Name` headings, separated by `---` horizontal rules.

End the story with `*fin.*`

## Writing Conventions

- Set the story in **Toronto, Canada** unless the prompt specifies otherwise.
- Use Canadian institutions (DND, RCMP, OSC, parliamentary committees), Canadian geography (Toronto, Ottawa, Calgary, Vancouver, etc.), and Canadian cultural context.
- Use Canadian spelling (colour, centre, defence, licence).
- Population reference: forty million people (Canada), not three hundred million.
- Currency: Canadian dollars. Stock exchange: TSX (opens 9:30 AM ET).
- Write in a literary fiction style — vivid, grounded, character-driven.
- Aim for substantial length (8,000–15,000 words) with multiple parts.
- Do not include any AI branding, tool mentions, or meta-commentary in the story file.

## After Writing

Tell the user the story is written and suggest they review it. Do not commit, publish, or run any other scripts automatically.
