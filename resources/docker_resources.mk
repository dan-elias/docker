.ONESHELL:
.DEFAULT_GOAL := help
SHELL := /bin/bash

.PHONY: help build run start stop attach

DOCKER_TOOLS_SOURCE_DIR := $(shell $$(dirname $$(readlink -f docker_resources.mk)))

help: ## Show this help
	@egrep -h '\s##\s' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

build: build-setup build-container build-outputs   ## (re)build docker containers
	@echo $@ Not Implemented

.PHONY: build-setup build-container build-outputs

build-setup:
	rm -rf _build
	mkdir -p _build/setup
	cp -rL $(DOCKER_TOOLS_SOURCE_DIR)/scripts _build/setup
	if [ -d setup ]; then
		cp -rL setup _build
	fi

build-container:
	if [ -f docker-compose.yml ]; then
		docker-compose build
	else
		image_name=$$(basename `pwd`)
		build_opts="--tag $$image_name:latest"
		if [ -f VERSION ]; then
			build_opts="$$build_opts --tag $$image_name:$$(cat VERSION | sed 's/^[ \t]+//g' | sed 's/[ \t]$$//g' | grep .)"
		fi
		docker build $$build_opts .
	fi

build-outputs:
	build_output_dir=`pwd`/_build/output
	for cmd in /usr/local/bin/save_versions /usr/local/bin/save_sysinfo ; do
		if [ -f _build/setup/skel$$cmd ] ; then
			mkdir -p $$build_output_dir
			$(MAKE) run command="$$cmd"
		fi
	done

run:   ## Run a single command in the main container
	@echo $@ Not Implemented

start:  ## Start service(s)
	@echo $@ Not Implemented

stop:  ## Stop service(s)
	@echo $@ Not Implemented

attach:  ## Attach terminal to (running) main service
	@echo $@ Not Implemented
