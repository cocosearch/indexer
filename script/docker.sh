#!/bin/bash

tag="$1"

docker build --no-cache -f Dockerfile -t ghcr.io/cocosearch/indexer:"$tag" .
