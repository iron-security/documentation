all: clean dev-hugo

dev: dev-wrangler-build dev-miniflare

install:
	brew install hugo npm
	npm install
	npm install -g miniflare @cloudflare/wrangler

dev-miniflare:
	miniflare dist/worker.js --watch --debug --host=localhost --https --wrangler-config=wrangler.toml --env dev.env

dev-hugo:
	npm run server

dev-wrangler-build:
	wrangler build --env dev

dev-wrangler:
	wrangler dev --env dev --verbose

build-hugo:
	npm run build

publish:
	npm run build
	wrangler publish --env prd

clean:
	rm -r dist/ generated/  resources/ workers/worker/ || true

logs:
	wrangler tail --env prd

open:
	open https://localhost:8787
