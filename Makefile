.PHONY: init
init:
	virtualenv -p `which python3` ./
	bin/pip3 install -r requirements.txt

.PHONY: check
check:  pep8 dockerlint

.PHONY: pep8
pep8: install-dev-tools
	bin/flake8 botpoc/*.py

.PHONY: dockerlint
dockerlint: install-dev-tools
	node_modules/.bin/dockerlint Dockerfile

.PHONY: install-dev-tools
install-dev-tools:
	bin/pip3 install -r requirements-dev.txt
	npm install

