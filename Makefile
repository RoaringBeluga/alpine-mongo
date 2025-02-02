VERSION = latest
IMAGE = belugaadmin/alpine-mongo:$(VERSION)

all: image publish

image:
	docker build -t $(IMAGE) --no-cache .

publish:
	docker push $(IMAGE)
