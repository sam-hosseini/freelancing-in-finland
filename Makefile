SHELL := /bin/bash

create-node-modules:
	@if [ ! -d "node_modules" ]; then yarn install; fi

generate-table-of-contents: create-node-modules
	@node_modules/.bin/markdown-toc README.md --bullets '*' -i
