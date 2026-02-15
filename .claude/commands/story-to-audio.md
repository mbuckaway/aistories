---
name: story-to-audio
description: Convert a story to an M4A audio file using macOS text-to-speech
disable-model-invocation: true
argument-hint: <story-directory>
---

Convert the story in the given directory to an M4A audio file.

## Steps

1. Find the story `.md` file in `$ARGUMENTS/` (the file that is not `story-prompt.md`, `preamble.md`, or `LICENSE-*`).
2. Run the conversion script, outputting the M4A file alongside the story:
   ```
   bash scripts/story_to_audio.sh -f <story-file>
   ```
   The script defaults the output to the same path as the input with an `.m4a` extension.
3. Report the output file path and size when done.

## Options

If the user specifies a voice or speech rate, pass them through:
- Voice: `-v <voice-name>`
- Rate: `-r <words-per-minute>`

Example with options:
```
bash scripts/story_to_audio.sh -f gambit/the_confabulators_gambit.md -v Samantha -r 180
```

To list available voices, run:
```
bash scripts/story_to_audio.sh -l
```
