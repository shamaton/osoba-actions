pull:
	git pull --recurse-submodules && git submodule update --init --recursive
.PHONY: pull