FROM n8nio/n8n:latest

# Switch to root to install system dependencies
USER root

# Install Python, make, and other required dependencies
RUN apk add --no-cache python3 py3-pip make g++ cairo-dev pango-dev

# Switch back to the non-root "node" user for security
USER node

# Set Python path for node-gyp
ENV PYTHON=/usr/bin/python3

# Install the barcode package
RUN npm install --prefix /home/node/.n8n/nodes @skriptfabrik/n8n-nodes-barcode
