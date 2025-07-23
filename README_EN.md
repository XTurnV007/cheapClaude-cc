# cheapClaude CC

[中文](README.md) | **English**

Use cheaper Claude models (claude-opus-4-20250514) to power your Claude Code.

[Comprehensive research on claude-opus-4-20250514 performance parameters](https://www.anthropic.com/claude/opus)

## Quick Installation

1. Go to CursorAI Open Platform to apply for an API Key.

Click to visit: [CursorAI Open Platform](https://api.cursorai.art/register?aff=xoXg/)

Top right corner Console -> API Tokens -> Add Token -> Scroll down to the bottom -> In the grouping settings, set your token to the **Claude Code专属** group

2. Quick installation - you will be prompted to enter your API Key, then press Enter to complete.

```shell
bash -c "$(curl -fsSL https://raw.githubusercontent.com/XTurnV007/cheapClaude-cc/refs/heads/main/install.sh)"
```

3. Start using Claude Code at low cost.

```shell
claude
```

## Features

- **Cost-effective**: Use Cursor Ai's competitive pricing instead of direct Anthropic API
- **Easy setup**: One-command installation with automatic configuration
- **Seamless integration**: Works with existing Claude Code workflows
- **Latest model**: Powered by Cursor Ai's claude-opus-4-20250514 model

## What the installer does

The installation script automatically:
1. Checks and installs Node.js (v18+) if needed
2. Installs Claude Code globally via npm
3. Configures Claude Code to skip onboarding
4. Prompts for your CursorAi API key
5. Sets up environment variables to redirect API calls to Cursor Ai's servers

## Manual Configuration

If you prefer to configure manually, set these environment variables:

```bash
export ANTHROPIC_BASE_URL=https://api.cursorai.art/anthropic/
export ANTHROPIC_API_KEY=your_CursorAi_api_key_here
```

## Support

For issues or questions, please visit the [Cursor Ai Open Platform](https://api.cursorai.art/register?aff=xoXg) or check the original Claude Code documentation. 