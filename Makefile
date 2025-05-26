SHELL := /bin/bash
SRC=$(shell pwd)
DIR=apis

.PHONY: help
help:
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / { printf "\033[36m%-30s\033[0m %s\n", $$1, $$2 }' $(MAKEFILE_LIST)

.DEFAULT_GOAL := help

.PHONY: teste
teste: ## Tests
	set -e; \
	echo ${TESTE}
	ls -la apis/${API}/teste
