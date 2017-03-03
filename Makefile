all: c js
c: prepare
	gcc ./primes.c -o ./dist/primes
js: prepare
	. ~/src/local/javascript/emscripten/emsdk_portable/emsdk_env.sh
	emcc ./primes.c -o ./dist/primes.js
prepare:
	mkdir -p ./dist

