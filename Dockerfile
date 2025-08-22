FROM n8nio/n8n:latest

# n8n runs as 'node' by default and loads modules from /home/node/.n8n
USER node

# Install the libraries you want available in Code nodes
RUN mkdir -p /home/node/.n8n \
 && npm install --prefix /home/node/.n8n \
      crypto-js@4 fast-xml-parser@^4 he luxon iconv-lite uuid \
 && npm install --prefix /home/node/.n8n/nodes bwip-js
# (drop/add packages as you need)
