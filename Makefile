DOCKER_TAG = bamboog130/haskellstack
SNAPSHOTS_URL = https://www.stackage.org/download/snapshots.json

get-snapshot-list:
	wget -q $(SNAPSHOTS_URL) -O snaphosts.json

build-base:
	cd base && docker build --no-cache -t $(DOCKER_TAG):base .
	docker image prune -f

build-stack: get-snapshot-list
	$(eval STACK_SNAPSHOT := $(shell jq -r '.lts' snaphosts.json))
	cd stack && docker build --no-cache -t $(DOCKER_TAG):$(STACK_SNAPSHOT) --build-arg snapshot=$(STACK_SNAPSHOT) .
	docker image prune -f

clean:
	rm -f snaphosts.json
