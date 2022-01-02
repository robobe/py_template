SHELL := bash
.ONESHELL:
.SHELLFLAGS := -eu -o pipefail -c
.DELETE_ON_ERROR:
MAKEFLAGS += --warn-undefined-variables
MAKEFLAGS += --no-builtin-rules

# note: tab not 4 spaces
package:  ## Create package
	python setup.py sdist
.PHONY: package

lint:  ## Run linting
	black --check .
	isort -c .
	flake8 .
.PHONY: lint

lint-fix:  ## Run autoformatters
	run black .
	run isort .
.PHONY: lint-fix

typecheck:  ## Run typechecking
	mypy --show-error-codes --pretty .
.PHONY: typecheck

clean:
	find . -name '*.pyc' -delete
	rm -rf dist
	rm -rf build
	rm -rf *.egg-info

.DEFAULT_GOAL := help
help: Makefile
	@grep -E '(^[a-zA-Z_-]+:.*?##.*$$)|(^##)' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[32m%-30s\033[0m %s\n", $$1, $$2}' | sed -e 's/\[32m##/[33m/'