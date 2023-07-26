.PHONY: help build venv isntall gh-deploy-mike

ACTIVATE_LINUX=. venv/bin/activate
INSTALL_PACKAGES=pip install -r requirements.txt

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' Makefile | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-10s\033[0m %s\n", $$1, $$2}'

venv: ## Create python virtual environment in 'venv' folder
	@echo "Creating python virtual environment in 'venv' folder..."
	@python3 -m venv venv

install: ## Install python packages
	@echo "Installing python packages..."
	@$(ACTIVATE_LINUX)
	@$(INSTALL_PACKAGES)

gh-deploy-mike: ## Deploy docs
	@echo "Running mike deploy..."
	@$(ACTIVATE_LINUX)
	@@mike deploy --push --update-aliases v3 latest
