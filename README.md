#### 以 joined 方式连接另一个 docker 容器进行压测
```
docker run -it --rm --name=wrk --network=container:japronto -v /e/project/docker/tools/wrk:/wrk -w /wrk wrk -t1 -c100 -d2s -s pipeline.lua  "http://localhost:8080"
```
