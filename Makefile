SHELL := /bin/bash

help:	## Show this help.
	@egrep -h '\s##\s' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m  %-30s\033[0m %s\n", $$1, $$2}'

venv: ## Create virtualenv.
	@python3 -m virtualenv .venv
	@echo "\n--------------------"
	@echo "Please manually run source .venv/bin/activate"

run:	## Run the program.
	@python src/main.py

test:	## Run tests.
	@python -m pytest tests/ -s -v

lint:	## Check code lint.
	@pylint src/

lint-config:	## Create lint configuration.
	@pylint --generate-rcfile > .pylintrc

requirements: ## Generate requirements.txt.
	@pip freeze > requirements.txt

install:	## Install requirements.
	@pip install -r requirements.txt