all:
	go build ./...
	go -C v2 build ./...

test:
	go test -race ./...
	./hack/verify-examples.sh
	go -C v2 test -race ./...
	(cd v2 && ./hack/verify-examples.sh)
