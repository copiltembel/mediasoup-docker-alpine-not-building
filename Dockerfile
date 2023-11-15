FROM node:20-alpine AS builder

RUN apk add --no-cache --update make npm python3 g++ linux-headers py3-pip

ENV NODE_ENV=production

WORKDIR /app

COPY ["package.json", "package-lock.json", "./"]

ENV MEDIASOUP_SKIP_WORKER_PREBUILT_DOWNLOAD="true"

RUN npm install --omit=dev

