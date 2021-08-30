IMAGE=hugoguru/html-proofer

build:
	@docker build --build-arg VERSION=$(HTMLPROOFER_VERSION) -t $(IMAGE):dev .