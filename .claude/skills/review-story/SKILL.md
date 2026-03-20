---
name: review-story
description: Write a literary review of a story in a given directory
disable-model-invocation: true
argument-hint: <story-directory>
model: opus
allowed-tools: Read, Glob, Grep, Write
---

Write a literary review of the story in the given directory and save it as `$ARGUMENTS/reviewed.md`.

## Steps

1. Read `CLAUDE.md` for project conventions.
2. Find the story `.md` file in `$ARGUMENTS/` (the file that is not `story-prompt.md`, `story-outline.md`, `image-prompt.md`, `postamble.md`, `plausibility_assessment.md`, `reviewed.md`, or `LICENSE-*`).
3. Read the story file in full.
4. If `$ARGUMENTS/story-outline.md` exists, read it — use it as context for intended characters, themes, and plot to evaluate whether the story delivers on its own plan.
5. If `$ARGUMENTS/story-prompt.md` exists, read it — use it as context for the original creative intent.
6. Write the review to `$ARGUMENTS/reviewed.md` using the format and criteria below.

## Review Format

The review file must begin with Jekyll front matter for publishing, followed by the review body:

```markdown
---
layout: default
title: "Review: [Story Title]"
description: "A literary review of [Story Title] by Claude & Mark Buckaway"
---

# Review: [Story Title]

### A Literary Review by Claude & Mark Buckaway

---

## Overview

[A 2–3 paragraph summary of the story's premise, genre, and scope — not a plot synopsis. Introduce the central situation and what the story sets out to explore without spoiling key turns. State the reviewer's overall impression up front.]

---

## Plot & Narrative Arc

[Evaluate the story's plot structure: exposition, rising action, climax, falling action, and resolution. Does the narrative arc feel complete? Are there plot holes, loose threads, or unearned resolutions? Is the pacing effective — does the story build tension and release it at the right moments, or does it drag or rush? Does the opening hook the reader? Does the ending satisfy? If the story uses foreshadowing, flashback, or non-linear structure, assess whether those devices serve the story or obscure it.]

---

## Characters

[Evaluate the cast. Are the characters distinct, believable, and sufficiently developed for the story's length? Do their motivations make sense? Are their actions consistent with who they are established to be? Do secondary characters serve the narrative or feel like furniture?]

---

## Character Development

[Assess character arcs separately from character introduction. Do the major characters change, grow, or reveal new dimensions over the course of the story? Are those transformations earned through events and choices, or do they feel imposed? If a character remains static, is that stasis deliberate and meaningful? Are moments of decision, failure, or insight rendered with enough depth for the reader to feel the weight of change?]

---

## Themes & Ideas

[Identify the central theme(s) and evaluate how effectively the story explores them. Are the themes woven organically into plot and character, or are they delivered through exposition and lecture? Does the story raise questions worth asking? Does it offer insight, ambiguity, or provocation — or does it settle for easy answers? Are secondary themes handled with care or do they clutter the narrative?]

---

## Setting & World-Building

[Evaluate the story's sense of place. Is the setting vivid and specific, or generic and interchangeable? Does the world feel real and internally consistent? For speculative or technical fiction, is the world-building plausible within the story's own rules? Does the setting contribute to mood, theme, or conflict — or is it merely a backdrop?]

---

## Believability & Internal Logic

[Assess the story's plausibility on its own terms. Do the characters behave as real people would given their circumstances? Are the technical, institutional, or procedural details accurate enough to sustain suspension of disbelief? Are there moments where convenience or contrivance undermines credibility? For speculative elements, does the story establish and respect its own rules?]

---

## Prose Style & Voice

[Evaluate the quality of the writing at the sentence level. Is the prose clear, precise, and evocative? Does the narrative voice suit the story's tone and genre? Is the diction consistent? Are there passages of particular strength or weakness? Does the writing show restraint where needed or tend toward overwriting? Assess sentence variety, rhythm, and the balance between showing and telling.]

---

## Dialogue

[Evaluate how characters speak. Does the dialogue feel natural and distinct — can you tell characters apart by how they talk? Does dialogue advance the plot or reveal character, or does it serve as a vehicle for exposition? Are dialogue tags handled with restraint? Is the balance between dialogue and narration effective?]

---

## Pacing & Structure

[Evaluate the story's structural choices. Are the parts/chapters well-proportioned? Does the story earn its length, or could sections be cut or expanded? Are transitions between scenes and time jumps handled smoothly? Does the structure reinforce the story's themes or create a specific reading experience?]

---

## Strengths

[A bulleted list of the story's most notable achievements — the things it does best. Be specific: cite particular scenes, passages, characters, or craft decisions.]

---

## Areas for Improvement

[A bulleted list of the story's weaknesses or missed opportunities. Be constructive and specific: identify what could be stronger and, where possible, suggest the direction of improvement without prescribing exact fixes.]

---

## Final Assessment

[A concluding 2–3 paragraph evaluation. Synthesize the analysis into an overall judgement of the story's quality and impact. What kind of reader would this story appeal to? How does it compare to its ambitions — does it achieve what it sets out to do? End with a clear, honest recommendation.]

---

*Review complete.*
```

## Review Criteria

When evaluating each section, draw on established literary analysis principles:

- **Plot**: Examine the five-act or three-act structure. Look for the inciting incident, complications, climax, and denouement. Assess causality — do events follow logically from what precedes them?
- **Characters**: Apply the round vs. flat character distinction. Assess whether protagonists are fully realized individuals with contradictions and depth, not archetypes.
- **Character Development**: Track the character arc from beginning to end. Look for the key choice, crisis, or revelation that catalyses change. Distinguish earned transformation from authorial fiat.
- **Themes**: Identify motifs and recurring images. Assess whether theme emerges from story or is imposed upon it. A good theme is shown, not stated.
- **Setting**: Evaluate sensory detail, specificity, and integration with narrative. Setting should do more than describe — it should create atmosphere and reflect or contrast with the characters' inner states.
- **Believability**: Apply the test of internal consistency. Speculative fiction need not be realistic, but it must be internally coherent. Characters must act from believable motivation, not plot convenience.
- **Prose**: Assess clarity, precision, imagery, and rhythm. Look for cliches, purple prose, and unnecessary adverbs. Evaluate the ratio of showing to telling.
- **Dialogue**: Assess naturalness, subtext, and differentiation between character voices. Good dialogue does at least two things at once (advances plot while revealing character, for example).
- **Pacing**: Assess the balance between scene (real-time action and dialogue) and summary (compressed narration). Look for momentum, drag, and structural proportion.

## Guidelines

- Be honest and rigorous. A useful review identifies both strengths and weaknesses with equal specificity.
- Use evidence from the text — quote or reference specific passages, scenes, or lines to support assessments.
- Avoid vague praise ("well-written") or vague criticism ("could be better"). Every claim should be grounded in a concrete observation.
- If an outline or prompt exists, evaluate whether the story delivers on its stated intentions — but also evaluate the story on its own merits independent of the plan.
- Do not summarize the plot in detail. The review assumes the reader has read the story.
- Use Canadian spelling (colour, centre, defence, etc.) consistent with project conventions.
- Do not include any AI branding, tool mentions, or meta-commentary in the review file.

## After Writing

Tell the user the review is written and summarize the key findings (major strengths, major weaknesses, overall assessment). Suggest they review it. Do not commit, publish, or run any other scripts automatically.
