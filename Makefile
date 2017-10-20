.PHONY: init
init:
	virtualenv -p `which python3` ./
	pip3 install -r requirements.txt

