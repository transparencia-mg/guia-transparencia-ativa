.PHONY: help build

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' Makefile | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-10s\033[0m %s\n", $$1, $$2}'

gh-deploy-mike: ## Deploy docs
	@echo "Running mike deploy..."
	@mike deploy --push --update-aliases v3 latest
