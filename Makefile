SHELL := /bin/bash

# Colors
RED=`tput setaf 1`
GREEN=`tput setaf 2`
RESET=`tput sgr0`
YELLOW=`tput setaf 3`

# Name
NAME = pendect/mkdocs
# Get version form VERSION
VERSION := $(shell cat VERSION)
DOCKER := $(bash docker)

# Add the following 'help' target to your Makefile
# And add help text after each target name starting with '\#\#'
.PHONY: help
help: ## This help message
	@echo -e "$$(grep -hE '^\S+:.*##' $(MAKEFILE_LIST) | sed -e 's/:.*##\s*/:/' -e 's/^\(.\+\):\(.*\)/\\x1b[36m\1\\x1b[m:\2/' | column -c2 -t -s :)"

.PHONY: build
build: ## Builds docker image for mkdocs
	docker build --no-cache=true -t $(NAME):$(VERSION) --rm -f dockerfiles/Dockerfile .

.PHONY: push
push: ## Pushes mkdocs images to DockerHub
	docker push $(NAME):$(VERSION)
	docker push $(NAME):latest
	git push origin --tags

.PHONY: tag_latest
tag_latest: ## Tag image with version and latest tag
	docker tag $(NAME):$(VERSION) $(NAME):latest
	git tag -a $(VERSION) -m 'Released version $(VERSION)'

.PHONY: last_built_date
last_built_date: ## Show last build date
	docker inspect -f '{{ .Created }}' $(NAME):$(VERSION)

.PHONY: release
release: check_release_version build tag_latest push ## Combine steps to make a release to DockerHub


.PHONY: check_release_version
check_release_version:
	@if docker images $(NAME) | awk '{ print $$2 }' | grep -q -F $(VERSION); then echo "$(RED)$(NAME) version $(VERSION) is already build !$(RESET)"; false; fi
