FROM n8nio/n8n:latest-debian

# Install build tools and dependencies for node-canvas
USER root
RUN apt-get update && \
    apt-get install -y build-essential libcairo2-dev libpango1.0-dev libjpeg-dev libgif-dev librsvg2-dev python3 python3-pip

USER node

# Set Python path for node-gyp
ENV PYTHON=/usr/bin/python3

# Install the barcode package
RUN npm install --prefix /home/node/.n8n/nodes @skriptfabrik/n8n-nodes-barcode

