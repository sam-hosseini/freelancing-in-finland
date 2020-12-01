SHELL := /bin/bash

create-node-modules:
	@if [ ! -d "node_modules" ]; then yarn install; fi

create-venv:
	@if [ ! -d "venv" ]; then virtualenv venv; source venv/bin/activate; pip install -r requirements.txt; fi

develop-readme: create-venv
	@source venv/bin/activate; markdown-pp README.mdpp --output README.md --watch

generate-readme: create-venv
	@source venv/bin/activate; markdown-pp README.mdpp --output README.md

generate-table-of-contents: create-node-modules
	@$(MAKE) generate-readme
	@node_modules/.bin/markdown-toc README.md --bullets '*' --no-firsth1 > "content/01 - header/02 - table-of-contents.md"
	@$(MAKE) generate-readme

generate-contributors-list: create-node-modules
	@node_modules/.bin/all-contributors generate

test: generate-readme generate-table-of-contents generate-contributors-list
