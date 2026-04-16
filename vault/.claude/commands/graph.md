You are generating a link graph and orphan report for the vault.
Read CLAUDE.md before doing anything else.

Steps:

1. Walk all .md files under wiki/ and qa/.
2. For each file, read the frontmatter links_out field.
   Also scan the body for any [[...]] links not already in links_out.
3. Build a directed edge list:
   { "edges": [ { "from": "<id>", "to": "<id>" }, ... ] }
4. Compute inbound link counts per note.
5. Identify orphans: notes with ZERO inbound links from other wiki/ notes.
6. Write meta/link-graph.json with the edge list.
7. Report:
   - Total wiki notes: N
   - Total edges: N
   - Orphan notes (0 inbound links):
     - [[id]] — title
     (list them all — these are candidates for better linking)
   - Most-linked notes (top 5 by inbound count):
     - [[id]] — N inbound links

Tip for the user: copy the orphan list and run /discuss <orphan-topic> to
build connections from existing knowledge into isolated notes.
