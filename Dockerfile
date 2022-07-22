FROM caddy:2-builder-alpine AS builder

RUN xcaddy build \
    --with github.com/caddy-dns/digitalocean@master


FROM caddy:2-alpine

ENV DO_API SETMEUP

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
