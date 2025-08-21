FROM n8nio/n8n:latest

USER root

# Install essential Alpine build tools (still useful for other things)
RUN apk add --no-cache \
  build-base \
  python3 \
  py3-pip

USER node

ENV PYTHON=/usr/bin/python3
