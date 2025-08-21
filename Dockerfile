FROM n8nio/n8n:1.40.0-debian

USER root

RUN apt-get update && \
    apt-get install -y build-essential libcairo2-dev libpango1.0-dev libjpeg-dev libgif-dev librsvg2-dev python3 python3-pip

USER node

ENV PYTHON=/usr/bin/python3

RUN npm install --prefix /home/node/.n8n/nodes @skriptfabrik/n8n-nodes-barcode
