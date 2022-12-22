.PHONY: build-linux
build-linux:
	cd apps/app1 && GOOS=linux GOARCH=amd64 go build .
