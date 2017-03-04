all: c js html

install: clean-all download

c: prepare
	gcc ./primes.c -o ./dist/primes
js: prepare
	. ./vendor/emsdk_portable/emsdk_env.sh && \
	emcc ./primes.c -o ./dist/primes.js
html: prepare
	. ./vendor/emsdk_portable/emsdk_env.sh && \
	emcc ./primes.c -o ./dist/primes.html

clean-all: clean
	rm -r vendor/
clean:
	rm -r dist/

prepare:
	mkdir -p ./dist

download: conf_emsdk
	./scripts/download.sh
conf_emsdk:
	./scripts/configure_emsdk.sh
