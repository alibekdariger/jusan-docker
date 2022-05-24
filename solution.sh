#!/bin/bash

curl https://stepik.org/media/attachments/lesson/691221/nginx.conf --output nginx.conf

docker run -d --name dockerbind --mount type=bind,source=/home/alibek/docker/nginx.conf,target=/etc/nginx/nginx.conf -p 7777:80 nginx:mainline
