venv:
	@python3 -m virtualenv .venv
	@echo "\n--------------------"
	@echo "Please manually run source .venv/bin/activate"

run:
	@python src/main.py

test:
	@python -m pytest tests/ -s -v

lint:
	@pylint src/

lint-config:
	@pylint --generate-rcfile > .pylintrc

requirements:
	@pip freeze > requirements.txt

install:
	@pip install -r requirements.txt