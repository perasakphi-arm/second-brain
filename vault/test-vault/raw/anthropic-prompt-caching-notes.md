# Notes on Anthropic Prompt Caching

Prompt caching lets you reuse a prefix of a prompt across multiple API calls.
Instead of re-sending the same large system prompt every time, you mark a
cache breakpoint and Anthropic stores that prefix. Subsequent calls that hit
the breakpoint pay a lower input token price.

Key facts:
- Cache TTL is 5 minutes. After 5 min the cache is evicted.
- Cache write costs 25% more than a normal input token.
- Cache read costs 90% less than a normal input token.
- Only the Anthropic API supports this (not third-party wrappers).
- Works with Claude 3 Haiku, Sonnet, and Opus models.

Use cases:
- Long system prompts repeated across many user turns.
- RAG: inject a large document once, then ask many questions about it.
- Tool definitions that don't change between calls.

Related: tool use, multi-turn conversations.
