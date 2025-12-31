FROM alpine:latest

LABEL org.opencontainers.image.authors="richard@holzeis.me"
LABEL org.opencontainers.image.source="https://github.com/holzeis/curl-jq"

# Disable prompts from apt.
ENV DEBIAN_FRONTEND noninteractive

RUN apk add --no-cache jq && apk add --no-cache curl && apk add --no-cache bind-tools

WORKDIR /app/