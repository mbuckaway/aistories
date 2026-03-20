# Story Format Reference

This document describes the canonical structure and formatting conventions for stories in this repository, derived from the existing story corpus.

---

## File Header Block

Every story file must begin with exactly this structure, with no content before it:

```markdown
# Story Title

### *One-line tagline in italics*

### A Story by Claude & Mark Buckaway

---
```

- **H1** (`#`) for the title only — used once, at the very top.
- **H3** (`###`) for the tagline — wrapped in `*italics*`.
- **H3** (`###`) for the author line — always `A Story by Claude & Mark Buckaway`.
- A `---` horizontal rule immediately follows the author line to separate the header from the body.

---

## Part Structure

The story body is divided into numbered, titled parts:

```markdown
## Part One: Descriptive Title

[Story content...]

---

## Part Two: Descriptive Title

[Story content...]

---
```

- **H2** (`##`) for each part heading.
- Part numbers are written as words: `Part One`, `Part Two`, `Part Three`, etc. — never digits.
- Part titles are descriptive and thematic, not generic (e.g., `Part Three: The Poison Pill`, not `Part Three: Rising Action`).
- Each part is separated from the next by a `---` horizontal rule.
- Number of parts is flexible — typically 5–9 for a short story. Add an **Epilogue** section if the story warrants a coda after the climax.

---

## Epilogue (Optional)

If the story uses an epilogue, format it the same way as a part:

```markdown
## Epilogue: Descriptive Title

[Epilogue content...]

---
```

Use an epilogue when the story's climax requires a quiet coda — a final image, a return to stillness, or a thematic resolution that belongs outside the main arc.

---

## Story Ending

Every story ends with the same closing mark, on its own line after the final `---`:

```markdown
---

*fin.*
```

No content follows `*fin.*`.

---

## Prose Style Conventions

These conventions are drawn from the existing story corpus and should be maintained for consistency.

### Opening

- Each part opens with an immediate scene. No preamble, no throat-clearing.
- The first sentence of the story is the most important — it should establish voice, character, and tension in a single line.
- Example: *"Dr. Mara Osei had spent eleven years teaching machines to speak. Now she was going to teach one to choke on its own words."*

### Paragraphs

- Standard prose paragraphs with no extra blank lines between them within a section.
- A single blank line separates paragraphs (standard Markdown).
- Short, punchy sentences for impact. Longer sentences for exposition, description, and interiority.
- Sentence fragments are permitted for dramatic emphasis.

### Dialogue

- Dialogue is woven into prose, not isolated as a screenplay exchange.
- Dialogue tags are minimal — prefer `she said` over `she exclaimed` / `he replied breathlessly`.
- When a dialogue beat deserves weight, let it stand as its own paragraph.

### Internal Thought

- Character interiority is rendered in close third person — `she thought`, `he noticed`, or simply folded into narration without attribution.
- Use `*italics*` for brief, direct internal thoughts when needed for emphasis: *"This was a mistake."*

### Technical Language

- Technical, financial, or domain-specific language is used accurately and without condescension.
- Explain concepts through character perception, not authorial aside — the reader learns what the character learns.

### Tone

- Literary realism — grounded, precise, emotionally restrained.
- Irony and dark humour are permitted but should arise naturally from situation, not from narrative voice editorialising.
- Avoid sentimentality. Let events carry emotional weight without telling the reader how to feel.

---

## Length

- Short stories: **5,000–8,000 words** (as specified in the story outline, if present).
- Default target (if outline does not specify): **8,000–15,000 words**.
- Each part should carry roughly equal narrative weight; avoid very short parts unless they serve a specific structural purpose (e.g., an epilogue).

---

## What Must Not Appear in the Story File

- No AI branding, tool names, or meta-commentary.
- No preamble or author's note (those live in a separate `postamble.md`).
- No table of contents.
- No footnotes or endnotes.
- No `# H1` headings other than the story title at the top.
