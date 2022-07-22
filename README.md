# caddy-do
caddy server docker image with the digitalocean dns module installed https://github.com/caddy-dns/digitalocean

# why
this is handy for enabling HTTPS for internal sites hosted at home

## why https at home?
1. with this, its easy
2. prevents network devices from listing in at home. (who knows what those ring devices do or can be turned on to do?)
3. gets the browser to stop complaining about insecure pages
4. lets you set CSP on your selfhosted sites (todo: get ref on when chrome stopped CSP for http sites)

todo <repo url>
todo rebuild schedule

set the DO_API env var

then in your caddyfile
  
```
your.athome.domain.com {
	respond "Hello World"	# replace with whatever config you need...
	tls {
		dns digitalocean {env.DO_API}
	}
}
```
