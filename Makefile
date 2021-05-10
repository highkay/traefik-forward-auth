
format:
	gofmt -w -s internal/*.go internal/provider/*.go cmd/*.go

test:
	go test -v ./...

build:
	docker build -t highkay/traefik-forward-auth:3.0.1 .

push:
	docker push highkay/traefik-forward-auth:3.0.1

.PHONY: format test
