You are opening a wiki-grounded discussion session on a topic.
Read CLAUDE.md before doing anything else.

Topic: $ARGUMENTS

Steps:

1. Read meta/index.md and meta/alias-table.json.
2. Find all wiki notes whose tags or aliases match the topic string.
   Load their full bodies (up to 10 notes). Report which notes you loaded.
3. Begin a freeform conversation with the user. Use the loaded wiki notes
   as your primary context — cite them when relevant.

Saving during the conversation:
- When the user says "save that", "approve this", or runs /approve, write
  the agreed content to inbox/ as a draft (NOT directly to wiki/).
- Use frontmatter type: concept (or the appropriate type).
- Set sources to include conversations/<timestamp>.md.

Archiving:
- At the end of the session (when user says "done" or "end session"),
  offer to archive the transcript to:
    conversations/<YYYY-MM-DD>-<topic-slug>.md
  The transcript should include the full exchange plus the frontmatter:
    type: conversation, tags: [<topic>], sources: [wiki notes used]

IMPORTANT: The inbox/ gate applies here too. Never write directly to wiki/.
