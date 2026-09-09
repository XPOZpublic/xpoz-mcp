FROM node:20-alpine

RUN npm install -g mcp-remote@0.8.5

COPY entrypoint.sh /usr/local/bin/xpoz-mcp
RUN chmod +x /usr/local/bin/xpoz-mcp

ENV XPOZ_MCP_URL=https://mcp.xpoz.ai/mcp

ENTRYPOINT ["xpoz-mcp"]
