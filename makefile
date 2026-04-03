.PHONY: pull push

pull:
		$(eval BRANCH := $(shell git rev-parse --abbrev-ref HEAD))
		git pull sjy $(BRANCH)

push:
		$(eval BRANCH := $(shell git rev-parse --abbrev-ref HEAD))
		git pull sjy $(BRANCH)
		git push sjy $(BRANCH)
