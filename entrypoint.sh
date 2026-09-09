#!/bin/sh
set -e

XPOZ_MCP_URL="${XPOZ_MCP_URL:-https://mcp.xpoz.ai/mcp}"

if [ -n "$XPOZ_API_KEY" ]; then
  exec mcp-remote "$XPOZ_MCP_URL" --header "Authorization: Bearer ${XPOZ_API_KEY}"
fi

exec mcp-remote "$XPOZ_MCP_URL"
