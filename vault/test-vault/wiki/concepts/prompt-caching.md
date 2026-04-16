---
id: concept/prompt-caching
title: Prompt Caching
type: concept
tags: [claude, api, performance, anthropic]
sources:
  - raw/anthropic-prompt-caching-notes.md
aliases: [prompt cache, cache breakpoints, cache ttl]
created: 2026-04-16
updated: 2026-04-16
links_out: [concept/tool-use]
---

# Prompt Caching

Prompt caching lets you reuse a prefix of a prompt across multiple API calls.
Instead of re-sending the same large system prompt every time, you mark a
**cache breakpoint** and Anthropic stores that prefix server-side.

## Key Facts

- **Cache TTL**: 5 minutes. After 5 min the cache is evicted.
- **Cache write cost**: 25% more than a normal input token.
- **Cache read cost**: 90% less than a normal input token.
- Only the Anthropic API supports this — not third-party wrappers.
- Works with Claude 3 Haiku, Sonnet, Opus, and Claude 4 models.
- Cache breakpoints can be placed at any position in the messages array,
  not just the system prompt.

## Use Cases

- Long system prompts repeated across many user turns.
- RAG: inject a large document once, ask many questions about it.
- [[concept/tool-use|Tool definitions]] that don't change between calls.
