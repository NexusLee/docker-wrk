#### 以 joined 网络连接方式链接到 docker 容器进行压测
```
docker run -it --rm --name=wrk --network=container:japronto -v /e/project/docker/tools/wrk:/wrk -w /wrk wrk -t1 -c100 -d2s -s pipeline.lua  "http://localhost:8080"
```
