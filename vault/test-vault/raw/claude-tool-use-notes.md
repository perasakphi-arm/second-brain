# Claude Tool Use

Tool use (also called function calling) lets Claude call external functions
during a conversation. You define tools as JSON schemas; Claude decides when
to call them and returns a structured tool_use block.

Steps:
1. Define tools in the API request as an array of tool definitions.
2. Claude returns a tool_use content block with name + input.
3. Your code executes the tool and returns a tool_result block.
4. Claude continues the conversation with the result in context.

Key points:
- Claude does NOT execute tools itself — your code does.
- You can force a specific tool with tool_choice: { type: "tool", name: "..." }
- Works well with prompt caching: cache the tool definitions to save tokens.
- Parallel tool use: Claude can call multiple tools in one turn.

Related: prompt caching, multi-turn conversations.
