BIN = node_modules/.bin

test: node_modules test-compiled.js
	$(BIN)/testem

test-compiled.js: test.js
	$(BIN)/traceur --out $@ $<

node_modules: package.json
	npm install

.PHONY: test
