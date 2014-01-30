PATH := ./node_modules/.bin:$(PATH)

install: setup-config
	test -d plugins || mkdir plugins
	npm install --production
	bower install
	mkdir -p platforms
	rm -rf components/requirejs/dist

setup-config:


.PHONY: install build setup-config
