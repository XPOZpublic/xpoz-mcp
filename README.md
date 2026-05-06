# Xpoz MCP Server

**Search Twitter, Instagram, Reddit & TikTok from any AI agent.** 1.5B+ posts indexed. Natural language queries. CSV exports up to 500K rows. No API keys needed.

[![MCP Registry](https://img.shields.io/badge/MCP_Registry-listed-blue)](https://registry.modelcontextprotocol.io/?q=xpoz)
[![Website](https://img.shields.io/badge/xpoz.ai-visit-green)](https://xpoz.ai)

> **Remote MCP server** — no local installation required. Connect via Streamable HTTP and authenticate with OAuth 2.1 (sign in with Google, no API keys to manage). Direct probes to `https://mcp.xpoz.ai/mcp` return `401 Unauthorized` — that's expected; your MCP client handles the OAuth flow.

## Quick Start

### Claude Desktop / Cursor / Windsurf

Add to your MCP config:

```json
{
  "mcpServers": {
    "xpoz": {
      "type": "streamable-http",
      "url": "https://mcp.xpoz.ai/mcp"
    }
  }
}
```

### Claude Code, Codex, Gemini CLI

```bash
# Claude Code
claude mcp add --transport http --scope user xpoz https://mcp.xpoz.ai/mcp

# Codex / Gemini CLI: see https://www.xpoz.ai/integrations
```

### OpenClaw

```bash
clawhub install xpoz-social-search
```

Then authenticate via the OAuth link when prompted. Eight more pre-built skills are available — see [`clawhub.ai/u/atyachin`](https://clawhub.ai/u/atyachin).

---

## SDKs & CLI

If you'd rather call Xpoz directly from code or a terminal instead of through an MCP client:

| Tool | Install | Source |
|---|---|---|
| TypeScript / Node.js | `npm install @xpoz/xpoz` | [`XPOZpublic/xpoz-ts-sdk`](https://github.com/XPOZpublic/xpoz-ts-sdk) |
| Python | `pip install xpoz` | [`XPOZpublic/xpoz-python-sdk`](https://github.com/XPOZpublic/xpoz-python-sdk) |
| CLI (any platform) | `brew install XPOZpublic/xpoz/xpoz-cli` | [`XPOZpublic/xpoz-cli`](https://github.com/XPOZpublic/xpoz-cli) |

All three speak the same MCP protocol against `https://mcp.xpoz.ai/mcp` under the hood, so any tool you see below is reachable from every surface. Get an API token at [`xpoz.ai/get-token`](https://www.xpoz.ai/get-token).

---

## Platforms & Tools

### Twitter / X (14 tools)

| Tool | Description |
|------|-------------|
| `searchTwitterUsers` | Find users by name, bio, or keywords |
| `getTwitterUser` | Get profile details (followers, bio, metrics) |
| `getTwitterUsersByKeywords` | Discover users actively posting about topics |
| `getTwitterUserConnections` | Get followers or following list |
| `getTwitterPostsByKeywords` | Search tweets by keywords, hashtags, mentions |
| `getTwitterPostsByAuthor` | Get tweets from a specific user |
| `getTwitterPostsByIds` | Fetch specific tweets by ID |
| `getTwitterPostComments` | Get replies to a tweet |
| `getTwitterPostRetweets` | Get retweets of a tweet |
| `getTwitterPostQuotes` | Get quote tweets |
| `getTwitterPostInteractingUsers` | Users who liked/retweeted a post |
| `countTweets` | Count tweets matching a query (hourly/daily buckets) |
| `checkOperationStatus` | Poll async export operations |
| `cancelOperation` | Cancel a running operation |

### Instagram (9 tools)

| Tool | Description |
|------|-------------|
| `searchInstagramUsers` | Find users by name or username |
| `getInstagramUser` | Get profile details and metrics |
| `getInstagramUsersByKeywords` | Discover users posting about topics |
| `getInstagramUserConnections` | Get followers or following list |
| `getInstagramPostsByKeywords` | Search posts by keywords or hashtags |
| `getInstagramPostsByUser` | Get posts from a specific user |
| `getInstagramPostsByIds` | Fetch specific posts by ID |
| `getInstagramPostInteractingUsers` | Users who liked/commented on a post |
| `getInstagramCommentsByPostId` | Get comments on a post |

### Reddit (9 tools)

| Tool | Description |
|------|-------------|
| `searchRedditUsers` | Find users by name |
| `getRedditUser` | Get user profile and karma |
| `getRedditUsersByKeywords` | Discover users active in topics |
| `getRedditPostsByKeywords` | Search posts across subreddits |
| `getRedditPostWithCommentsById` | Get a post with its comment tree |
| `getRedditCommentsByKeywords` | Search comments by keywords |
| `searchRedditSubreddits` | Find subreddits by name |
| `getRedditSubredditWithPostsByName` | Get a subreddit's metadata and recent posts |
| `getRedditSubredditsByKeywords` | Discover subreddits by topic |

### TikTok (7 tools)

| Tool | Description |
|------|-------------|
| `searchTiktokUsers` | Find creators by name or username |
| `getTiktokUser` | Get creator profile (followers, likes, bio, verification) |
| `getTiktokUsersByKeywords` | Discover creators by topic in their post history |
| `getTiktokPostsByKeywords` | Search videos by keywords or hashtags |
| `getTiktokPostsByUser` | Get videos posted by a specific creator |
| `getTiktokPostsByIds` | Fetch specific videos by ID |
| `getTiktokCommentsByPostId` | Get comments on a specific video |

### Tracking & Monitoring (3 tools)

For continuous brand monitoring and lead generation — Xpoz indexes new matching content as it appears.

| Tool | Description |
|------|-------------|
| `addTrackedItems` | Subscribe to ongoing monitoring of a query, user, or subreddit across any platform |
| `getTrackedItems` | List your active tracked items with last-update timestamps |
| `removeTrackedItems` | Stop monitoring tracked items by ID |

---

## Key Features

- **Natural language queries** — describe what you want, Xpoz optimizes the search
- **CSV exports** — up to 500K rows in a single download via async operations
- **Server-side pagination** — handle large result sets efficiently
- **Field selection** — request only the fields you need
- **Cache control** — `forceLatest: true` bypasses cache for real-time data
- **Async operations** — long-running exports with status polling
- **OAuth 2.1** — dynamic client registration with Google as the upstream identity provider, no API keys to manage

## Use Cases

- **Lead generation** — find people discussing problems your product solves
- **Influencer discovery** — identify creators by what they post, not just follower count
- **Brand monitoring** — track mentions, sentiment, and competitor activity
- **Market research** — analyze trends and conversations at scale
- **Expert finding** — discover domain authorities across platforms
- **Security intelligence** — monitor vulnerability discussions before CVEs publish

## Pricing

| Plan | Price | Monthly results | Tracked items |
|---|---|---|---|
| Free | $0 | 100,000 | 1 |
| Pro | $20/mo | 1,000,000 | 10 |
| Max | $200/mo | 10,000,000 | 30 |
| Enterprise | custom | custom | custom |

All platforms and tools are included on every paid plan. See [xpoz.ai/pricing](https://www.xpoz.ai/pricing) and [xpoz.ai/rate-limits](https://www.xpoz.ai/rate-limits) for full details.

## Discovery surfaces (for AI agents and scanners)

These public, machine-readable endpoints describe Xpoz to crawlers and agentic clients:

| Surface | URL |
|---|---|
| MCP manifest | https://www.xpoz.ai/.well-known/mcp.json |
| MCP tool catalog (descriptions + JSON-Schema parameters) | https://www.xpoz.ai/.well-known/mcp/tools.json |
| Agent Skills index (agentskills.io v0.2.0) | https://www.xpoz.ai/.well-known/agent-skills/index.json |
| `llms.txt` | https://www.xpoz.ai/llms.txt |
| `llms-full.txt` | https://www.xpoz.ai/llms-full.txt |
| `discovery.txt` | https://www.xpoz.ai/discovery.txt |
| Webhooks contract | https://www.xpoz.ai/webhooks |
| Rate limits & 429 contract | https://www.xpoz.ai/rate-limits |

## Links

- 🌐 [xpoz.ai](https://xpoz.ai)
- 📦 [MCP Registry](https://registry.modelcontextprotocol.io/?q=xpoz)
- 🛠️ [ClawHub Skills](https://clawhub.ai/u/atyachin)
- 📖 [Documentation](https://help.xpoz.ai)
- 🐙 [XPOZpublic on GitHub](https://github.com/XPOZpublic) — TS SDK, Python SDK, CLI, agent skills, cookbooks
- 🍺 [Homebrew tap](https://github.com/XPOZpublic/homebrew-xpoz)

## License

This repository contains configuration and documentation only. The Xpoz MCP server is a hosted service — see [Terms of Service](https://www.xpoz.ai/terms).
