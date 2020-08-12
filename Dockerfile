FROM node:12.18.3-buster-slim

RUN apt-get update -y && \
    apt-get install -y \
      bzip2 \
      calibre && \
    apt-get autoremove -y && \
    apt-get clean && \
    rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*

WORKDIR /honkit

COPY package.json package-lock.json ./
RUN npm install
