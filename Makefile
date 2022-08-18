.PHONY: buildx
buildx:
	docker buildx build --platform linux/amd64,linux/arm64 -t ghcr.io/ubiregiinc/ubi-gae-python-base:main .

.PHONY: build
build:
	docker build -t ghcr.io/ubiregiinc/ubi-gae-python-base:main .

