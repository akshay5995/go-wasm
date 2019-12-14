GOCMD=go
GOBUILD=$(GOCMD) build
GOARCH=wasm
GOOS=js
WASM_NAME=main.wasm
BINARY_NAME=main

# build wasm for server
build-wasm: 
    GOOS=$(GOOS) GOARCH=$(GOARCH) go build -o $(WASM_NAME)
	
# build and run server to serve wasm and html
run:
	$(GOBUILD) -o $(BINARY_NAME) -v ./... ./$(BINARY_NAME)
