SOURCEDIR=.

GOCMD=go
GOBUILD=$(GOCMD) build
GOMOD=$(GOCMD) mod
GOBUILDVAR=CGO_ENABLED=0 GOOS=linux GOARCH=amd64
BINARY?=cli
BINARY_PATH=$(SOURCEDIR)/cmd/golang-cli/main.go

.DEFAULT_GOAL: $(BINARY)

all: clean build

build: 
	$(GOBUILD) -o ${BINARY} $(BINARY_PATH)

build-linux:
	${GOBUILDVAR} $(GOBUILD) -o ${BINARY} $(BINARY_PATH)

linux: clean build-linux

download:
	$(GOMOD) download

clean: 
	rm -f $(BINARY)
