# install requirements
init:
	poetry install

# Delete all compiled Python files
clean:
	find . -type f -name "*.py[co]" -delete
	find . -type d -name "__pycache__" -delete

# formatting
format:
	black src/
	isort src/

# lint
lint:
	flake8 src/
	mypy --explicit-package-bases src/

# test
test:
	python -m pytest src/test/

# all
all:
	make format
	make lint
	make test
	make clean