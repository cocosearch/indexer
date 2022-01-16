# indexer

[![Build Status](https://github.com/cocosearch/indexer/workflows/CI/badge.svg?branch=main&event=push)](https://github.com/cocosearch/indexer/actions?query=workflow%3ACI)
[![codecov](https://codecov.io/gh/cocosearch/indexer/branch/main/graph/badge.svg?token=CPBX6iyWnS)](https://codecov.io/gh/cocosearch/indexer)
[![Go Report Card](https://goreportcard.com/badge/github.com/cocosearch/indexer)](https://goreportcard.com/report/github.com/cocosearch/indexer)
[![License](https://img.shields.io/github/license/cocosearch/indexer.svg)](https://github.com/cocosearch/indexer/blob/main/LICENSE)
[![Release](https://img.shields.io/github/release/cocosearch/indexer.svg)](https://github.com/cocosearch/indexer/releases/latest)



## Introduction

*indexer* is the indexer of [cocosearch](https://github.com/cocosearch) written in Go.



## Prerequisites

- Go >= 1.17.0



## Run

```bash
git clone https://github.com/cocosearch/indexer.git

cd indexer
version=latest make build
./bin/indexer --config-file="$PWD/config/config.yml"
```



## Docker

```bash
git clone https://github.com/cocosearch/indexer.git

cd indexer
version=latest make docker
docker run -v "$PWD"/config:/tmp ghcr.io/cocosearch/indexer:latest --config-file="/tmp/config.yml"
```



## Usage

```
usage: indexer --config-file=CONFIG-FILE [<flags>]

cocosearch indexer

Flags:
  --help                     Show context-sensitive help (also try --help-long
                             and --help-man).
  --version                  Show application version.
  --config-file=CONFIG-FILE  Config file (.yml)
```



## Settings

*indexer* parameters can be set in the directory [config](https://github.com/cocosearch/indexer/blob/main/config).

An example of configuration in [config.yml](https://github.com/cocosearch/indexer/blob/main/config/config.yml):

```yaml
apiVersion: v1
kind: indexer
metadata:
  name: indexer
spec:
```



## License

Project License can be found [here](LICENSE).



## Reference

- [universal-ctags](https://github.com/universal-ctags/ctags)
