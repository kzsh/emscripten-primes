all: c js
c:
	gcc ./primes.c -o ./dist/primes
js:
	. ~/src/local/javascript/emscripten/emsdk_portable/emsdk_env.sh
	emcc ./primes.c -o ./dist/primes.js

