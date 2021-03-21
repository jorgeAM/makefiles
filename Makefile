# default target with just make command
.DEFAULT_GOAL := deploy
# default shell
SHELL = /bin/sh
# if there are folder with same name of targets this force to take target in Makefile
.PHONY:test

lint:
	@echo "🔦 Code linted\n" \
	      "  --- Level supreme"

test:
	@echo "🏃‍ Running tests"
	@echo "   ✅  All tests passed"

build: lint test
	@echo "📦 Build done"

deploy: build
	@echo "🚀 Deploy!!!"

# make say name="jorge" prints Hola jorge
sayHi: CMD=$(name)
sayHi:
	@echo "Hola" $(CMD)