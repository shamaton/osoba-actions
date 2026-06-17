OSOBA_PATH := osoba
OSOBA_BRANCH := main

pull:
	git pull --recurse-submodules && git submodule update --init --recursive

update-osoba:
	git submodule update --init $(OSOBA_PATH)
	git -C $(OSOBA_PATH) fetch origin $(OSOBA_BRANCH)
	git -C $(OSOBA_PATH) checkout $(OSOBA_BRANCH)
	git -C $(OSOBA_PATH) pull --ff-only origin $(OSOBA_BRANCH)

.PHONY: pull update-osoba
