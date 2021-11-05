# documentation

This is the repository that builds the static documentation website for [docs.iron.security](https://docs.iron.security/) using [hugo](https://gohugo.io/) for generating the HTML/CSS/JS and then `wrangler` to deploy everything to [Cloudflare Workers](https://workers.cloudflare.com) all over the globe.

Workers was chosen instead of [Cloudflare Pages](https://pages.cloudflare.com/) so we can set HTTP security headers on HTTP responses and even handle contact form submissions to [Mailgun](https://mailgun.com/).
Workers uses Cloudflare KV under the hood to store all static assets and retrieve them according to a caching policy.

For local development `miniflare` is used to not have to store the worker in Cloudflare KV every time we run it during development, triggering additional quotas.

## Building

If you just want to edit the website, a `make dev-hugo` will kickstart `hugo` on localhost:1313.
For a more complete local environment with the worker (and e.g. security headers set) plus `hugo`, `wrangler-cli` and `miniflare` installed, you can just run `make` for local development.

## Installation

```shell
% # this installs npm and hugo via brew
% make install
```
