# Xpoz MCP Server

**Search Twitter, Instagram, Reddit & TikTok from any AI agent.** 1.5B+ posts indexed. Natural language queries. CSV exports up to 64K rows. No API keys needed.

[![MCP Registry](https://img.shields.io/badge/MCP_Registry-listed-blue)](https://registry.modelcontextprotocol.io/?q=xpoz)
[![Website](https://img.shields.io/badge/xpoz.ai-visit-green)](https://xpoz.ai)

> **Remote MCP server** — no local installation required. Connect via Streamable HTTP and authenticate with Google OAuth.

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

### OpenClaw

```bash
clawhub install xpoz-social-search
```

Then authenticate via the OAuth link when prompted.

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

### Reddit (6 tools)

| Tool | Description |
|------|-------------|
| `searchRedditUsers` | Find users by name |
| `getRedditUser` | Get user profile and karma |
| `getRedditUsersByKeywords` | Discover users active in topics |
| `getRedditPostsByKeywords` | Search posts across subreddits |
| `getRedditPostWithCommentsById` | Get a post with its comment tree |
| `getRedditCommentsByKeywords` | Search comments by keywords |

### TikTok (coming soon)

---

## Key Features

- **Natural language queries** — describe what you want, Xpoz optimizes the search
- **CSV exports** — up to 64K rows in a single download via async operations
- **Server-side pagination** — handle large result sets efficiently
- **Field selection** — request only the fields you need
- **Cache control** — `forceLatest: true` bypasses cache for real-time data
- **Async operations** — long-running exports with status polling
- **OAuth 2.1** — secure Google OAuth authentication, no API keys to manage

## Use Cases

- **Lead generation** — find people discussing problems your product solves
- **Influencer discovery** — identify creators by what they post, not just follower count
- **Brand monitoring** — track mentions, sentiment, and competitor activity
- **Market research** — analyze trends and conversations at scale
- **Expert finding** — discover domain authorities across platforms
- **Security intelligence** — monitor vulnerability discussions before CVEs publish

## Pricing

- **Free tier** available
- Plans from **$20/mo** — includes all platforms and tools
- See [xpoz.ai/pricing](https://www.xpoz.ai/pricing) for details

## Links

- 🌐 [xpoz.ai](https://xpoz.ai)
- 📦 [MCP Registry](https://registry.modelcontextprotocol.io/?q=xpoz)
- 🛠️ [ClawHub Skills](https://clawhub.ai/skills?q=xpoz)
- 📖 [Documentation](https://www.xpoz.ai)

## License

This repository contains configuration and documentation only. The Xpoz MCP server is a hosted service — see [Terms of Service](https://www.xpoz.ai/tos).
