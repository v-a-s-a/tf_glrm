#!/bin/bash

docker run \
	-it \
	--rm \
	--volume $(pwd):/notebooks \
	--volume $(pwd):/logs \
	-p 8888:8888 \
	-p 6006:6006 tf-jupyter 


