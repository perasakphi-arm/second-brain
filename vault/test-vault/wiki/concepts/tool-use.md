---
id: concept/tool-use
title: Tool Use (Function Calling)
type: concept
tags: [claude, api, function-calling]
sources:
  - raw/claude-tool-use-notes.md
aliases: [function calling, tool calling, tools]
created: 2026-04-16
updated: 2026-04-16
links_out: [concept/prompt-caching]
---

# Tool Use (Function Calling)

Tool use lets Claude call external functions during a conversation.
You define tools as JSON schemas; Claude decides when to call them and
returns a structured `tool_use` block.

## How It Works

1. Define tools in the API request as an array of tool definitions.
2. Claude returns a `tool_use` content block with `name` + `input`.
3. Your code executes the tool and returns a `tool_result` block.
4. Claude continues with the result in context.

## Key Points

- Claude does NOT execute tools itself — your code does.
- Force a specific tool: `tool_choice: { type: "tool", name: "..." }`
- Combine with [[concept/prompt-caching]] to cache tool definitions and save tokens.
- **Parallel tool use**: Claude can call multiple tools in one turn.
