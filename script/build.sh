#!/bin/bash

build=$(date +%FT%T%z)
version="$1"

ldflags="-s -w -X github.com/cocosearch/indexer/config.Build=$build -X github.com/cocosearch/indexer/config.Version=$version"
target="indexer"

go env -w GOPROXY=https://goproxy.cn,direct

CGO_ENABLED=0 GOARCH=amd64 GOOS=linux go build -ldflags "$ldflags" -o bin/$target main.go
CGO_ENABLED=0 GOARCH=amd64 GOOS=windows go build -ldflags "$ldflags" -o bin/$target.exe main.go

upx bin/$target
upx bin/$target.exe
