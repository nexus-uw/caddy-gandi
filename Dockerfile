FROM caddy:2.9-builder-alpine AS builder

RUN xcaddy build \
    --with github.com/caddy-dns/gandi@master --with github.com/caddy-dns/cloudflare@master --with github.com/caddyserver/cache-handler@master


FROM caddy:2.9-alpine

ENV GANDI_API_TOKEN SETMEUP

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
