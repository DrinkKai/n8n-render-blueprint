FROM n8nio/n8n:latest

USER root

# Install essential Alpine build tools (still useful for other things)
RUN apk add --no-cache \
  build-base \
  python3 \
  py3-pip

USER node

# Install bwip-js in the custom nodes folder (which n8n already loads)
RUN npm install --prefix /home/node/.n8n/nodes bwip-js

ENV PYTHON=/usr/bin/python3
