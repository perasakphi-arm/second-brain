---
id: concept/link-test-fixture
title: Link Test Fixture
type: concept
tags: [test, fixture]
sources: []
aliases: [link fixture, code block test]
created: 2026-04-16
updated: 2026-04-16
links_out: []
---

# Link Test Fixture

This note is used by `test_link_skips_code_blocks.sh` to verify that `/link`
does not rewrite aliases found inside fenced code blocks.

## Normal prose (aliases here SHOULD be rewritten by /link)

This note discusses prompt caching and tool use in normal prose.

## Code block (aliases here must NOT be rewritten)

```python
# Example: "prompt caching" and "tool use" appear as strings here.
# /link must leave these alone.
config = {
    "feature": "prompt caching",
    "mode": "tool use",
}
```

Also inline code: `prompt caching` must not become `[[concept/prompt-caching|prompt caching]]`.

## Normal prose again

Back to normal text — prompt caching is referenced here again.
