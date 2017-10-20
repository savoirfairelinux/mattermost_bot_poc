.PHONY: init
init:
	virtualenv -p `which python3` ./
	bin/pip3 install -r requirements.txt

