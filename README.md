# caddy-gandi
[![Docker](https://github.com/nexus-uw/caddy-gandi/actions/workflows/docker-publish.yml/badge.svg)](https://github.com/nexus-uw/caddy-gandi/actions/workflows/docker-publish.yml)
caddy server docker image with the gandi dns module installed https://github.com/caddy-dns/gandi

# why
see https://github.com/nexus-uw/caddy-do

also, it should be noted that the Digital Ocean DNS manager while free does not (yet) support DNSSEC as of aug 2022 (https://ideas.digitalocean.com/network/p/add-dnssec-support-to-the-dns-manager)


#how
get docker image url from https://github.com/nexus-uw/caddy-gandi/pkgs/container/caddy-gandi

set the *GANDI_API_TOKEN* env var for the container

then in your caddyfile
  
```
your.better.domain.pl {
	respond "Hello World"	# replace with whatever config you need...
	tls {
		dns gandi {env.GANDI_API_TOKEN}
	}
}
```
