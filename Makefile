SHELL := /bin/bash

all: generate-table-of-contents generate-contributors-list

create-node-modules:
	@if [ ! -d "node_modules" ]; then yarn install; fi

generate-table-of-contents: create-node-modules
	@node_modules/.bin/markdown-toc README.md --bullets '*' -i

generate-contributors-list: create-node-modules
	@node_modules/.bin/all-contributors generate
