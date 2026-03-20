---
name: outline-story
description: Generate a detailed story outline from a story-prompt.md in a given directory
disable-model-invocation: true
argument-hint: <story-directory>
model: opus
allowed-tools: Read, Glob, Grep, Write
---

Generate a detailed story outline from the prompt in `$ARGUMENTS/story-prompt.md` and write it to `$ARGUMENTS/story-outline.md`.

## Steps

1. Read `$ARGUMENTS/story-prompt.md` to understand the creative prompt.
2. Read `CLAUDE.md` for writing conventions (Canadian setting defaults, spelling, institutions, etc.).
3. If a `$ARGUMENTS/story-outline.md` already exists, read it — the user may be refining an existing outline.
4. Think deeply about the story's structure, characters, themes, and narrative arc before writing.
5. Write the outline to `$ARGUMENTS/story-outline.md` using the format below.

## Outline Format

The outline file must follow this structure exactly:

```markdown
# Story Outline: [Recommended Title]

### *[Recommended subtitle or tagline — one evocative line]*

---

## Recommended Title

**Title:** [Full title]
**Subtitle/Tagline:** [One-line tagline in italics when published]

---

## Genre & Tone

[One paragraph describing the genre (e.g., speculative fiction, literary thriller, cli-fi), narrative tone (e.g., slow-burn tension, darkly humorous, elegiac), and intended emotional register for the reader.]

---

## Theme

[One or two paragraphs identifying the central theme(s) and what questions or ideas the story explores. Distinguish the primary theme from secondary ones if applicable.]

---

## Setting & Location

**Primary location:** [City, country, specific venues]
**Time period:** [Year or era; near-future, contemporary, historical]
**World-building notes:** [Any rules, conditions, or context the story world requires — economic climate, political backdrop, technological state, etc.]

---

## Plot Outline

### Part 1 — [Part Title]
[2–4 sentences describing the opening situation, inciting incident, and what is established or disrupted.]

### Part 2 — [Part Title]
[2–4 sentences describing the rising action, complications, and escalating stakes.]

### Part 3 — [Part Title]
[2–4 sentences describing the midpoint shift, reversal, or revelation that changes the trajectory.]

### Part 4 — [Part Title]
[2–4 sentences describing the crisis, the dark moment, and what the protagonist must confront.]

### Part 5 — [Part Title]
[2–4 sentences describing the climax and resolution — what is resolved, what is lost, what remains.]

> Add or remove parts as the story structure requires. A shorter story may have 3 parts; a complex one may have 6 or more.

---

## Characters

### [Character Name] — [Role, e.g., Protagonist]
- **Age/Background:** [Brief description]
- **Occupation/Position:** [What they do]
- **Motivation:** [What they want and why]
- **Core conflict:** [Internal or external tension driving their arc]
- **Voice/manner:** [How they speak and carry themselves]

### [Character Name] — [Role, e.g., Antagonist / Supporting]
[Same sub-fields as above]

> Include all significant characters. Minor recurring characters may be listed with a single sentence each under a "Minor Characters" sub-heading.

---

## Character Development Plan

[For each major character with a meaningful arc, describe where they begin psychologically or morally, the key moments or choices that change them, and where they end. Focus on internal transformation, not just external events. If a character does not change — which is a valid choice — note that deliberately and explain why their stasis serves the story.]

---

## Narrative Devices & Craft Notes

[Optional but encouraged. Note any structural devices: unreliable narrator, multiple POVs, non-linear timeline, epistolary sections, etc. Note any recurring motifs, symbols, or imagery the author should weave through the story. Note pacing intentions — e.g., "slow, atmospheric opening; accelerating pace after Part 2".]

---

## Research & Accuracy Notes

[List any factual domains the story touches — finance, law, technology, geography, institutions — and flag what will need to be accurate or plausible. Note any known facts already embedded in the prompt, and identify gaps where research may be needed before writing.]

---

## Open Questions

[A bulleted list of unresolved questions the author should decide before or during writing. These may be plot questions, character questions, or world-building questions the prompt leaves open.]

---

*Outline complete. Review and revise before proceeding to write-story.*
```

## Guidelines

- Apply Canadian defaults from `CLAUDE.md` unless the prompt explicitly specifies a different location.
- The outline should be thorough enough that a writer could begin drafting from it without needing to re-read the prompt.
- Be specific — prefer concrete details over vague placeholders wherever the prompt provides enough information.
- The plot outline parts are suggestions; adapt the number and titles to fit the story's actual structure.
- If the prompt is thin or ambiguous, make reasoned creative choices and flag them in the Open Questions section.
- Do not write any story prose in the outline — this is a planning document, not a draft.

## After Writing

Tell the user the outline is written and summarize the key creative choices made (title, structure, central theme). Suggest they review and revise the outline before running `write-story`. Do not commit, publish, or run any other scripts automatically.
