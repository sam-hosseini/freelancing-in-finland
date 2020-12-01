SHELL := /bin/bash

create-node-modules:
	@if [ ! -d "node_modules" ]; then yarn install; fi

create-venv:
	@if [ ! -d "venv" ]; then virtualenv venv; source venv/bin/activate; pip install -r requirements.txt; fi

generate-table-of-contents: create-node-modules
	@node_modules/.bin/markdown-toc README.md --bullets '*' -i

generate-contributors-list: create-node-modules
	@node_modules/.bin/all-contributors generate

compile-readme: create-venv
	@source venv/bin/activate; markdown-pp README.mdpp --output README.md

develop-readme: create-venv
	@source venv/bin/activate; markdown-pp README.mdpp --output README.md --watch
