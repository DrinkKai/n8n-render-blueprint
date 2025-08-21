FROM n8nio/n8n:latest

# Switch to root to install system deps
USER root

# Add Alpine packages needed for canvas (barcode dependency)
RUN apk add --no-cache \
  build-base \
  python3 \
  py3-pip \
  cairo-dev \
  pango-dev \
  jpeg-dev \
  giflib-dev \
  librsvg-dev \
  pixman-dev \
  mesa-dev

# Back to the regular 'node' user
USER node

# Ensure Python path for node-gyp (needed by canvas)
ENV PYTHON=/usr/bin/python3

# Install the barcode node
RUN npm install --prefix /home/node/.n8n/nodes @skriptfabrik/n8n-nodes-barcode
