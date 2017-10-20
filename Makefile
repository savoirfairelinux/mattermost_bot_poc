.PHONY: init
init:
	virtualenv -p `which python3` ./
	bin/pip3 install -r requirements.txt

.PHONY: check
check:  pep8

.PHONY: pep8
pep8: install-dev-tools
	bin/pep8 --verbose src/*.py

.PHONY: install-dev-tools
install-dev-tools:
	bin/pip3 install -r requirements-dev.txt

