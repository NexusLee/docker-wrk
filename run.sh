#!/bin/sh

# joined方式连接网络，加入japronto container
docker run -it --rm --name=wrk --network=container:japronto -v /e/project/docker/tools/wrk:/wrk -w /wrk wrk -t1 -c100 -d2s -s pipeline.lua  "http://localhost:8080"