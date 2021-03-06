# If you change something here, be sure to change it in package.json's scripts as well

dev:
	./node_modules/.bin/coffee -w -o out/ -c src/

compile:
	./node_modules/.bin/coffee -o out/ -c src/

test:
	make compile
	node ./out/bug.js
	node ./out/fix.js
	node ./out/csfix.js

.PHONY: dev compile test