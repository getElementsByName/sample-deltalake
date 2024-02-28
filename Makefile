ROOT_DIR:=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))


# https://github.com/delta-io/delta-docs/tree/main/static/quickstart_docker
build:
	cd delta-docker && \
	docker build -t delta_quickstart -f Dockerfile_delta_quickstart .
start:
	cd delta-docker && \
	docker run --name delta_quickstart --rm -it -p 8888-8889:8888-8889  --volume=$(ROOT_DIR)/share:/opt/spark/work-dir/share delta_quickstart