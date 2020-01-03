default: help

help:  ## This help page
	@echo 'make targets:'
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "  %-19s %s\n", $$1, $$2}'

build: ## build jedie/micropython:latest
	docker build . --pull -t jedie/micropython:latest

shell: build ## Open bash shell in micropython docker container
	docker run -it jedie/micropython:latest /bin/bash

micropython_version:  ## print micropython unix port version
	docker run -t jedie/micropython:latest /mpy/micropython/ports/unix/micropython -c "import sys;print(sys.implementation)"

mpy_cross_version: ## print mpy_cross version
	docker run -t jedie/micropython:latest /mpy/micropython/mpy-cross/mpy-cross --version

micropython_shell: build  ## Starts micropython unix port as interactive interpreter
	docker run -it jedie/micropython:latest /mpy/micropython/ports/unix/micropython