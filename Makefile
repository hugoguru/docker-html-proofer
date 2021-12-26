IMAGE=quay.io/hugoguru/html-proofer

define docker_build
	@DOCKER_CLI_EXPERIMENTAL=enabled docker buildx build \
		--build-arg VERSION=$(HTMLPROOFER_VERSION) \
		--platform linux/amd64,linux/arm64 \
		--progress plain \
		--target $(2) \
		--tag $(IMAGE):$(1) \
		.
endef

define docker_push
	@DOCKER_CLI_EXPERIMENTAL=enabled docker buildx build \
		--build-arg VERSION=$(HTMLPROOFER_VERSION) \
		--platform linux/amd64,linux/arm64 \
		--progress plain \
		--target $(2) \
		--tag $(IMAGE):$(1) \
		--push \
		.
endef

build:
	$(call docker_build,dev,main)
	$(call docker_build,dev-ci,ci)

push-edge:
	$(call docker_push,edge,main)
	$(call docker_push,edge-ci,ci)

push-release:
	$(call docker_push,$(HTMLPROOFER_VERSION),main)
	$(call docker_push,$(HTMLPROOFER_VERSION)-ci,ci)
	$(call docker_push,latest,main)
	$(call docker_push,latest-ci,ci)