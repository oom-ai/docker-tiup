# docker-tiup

[Tiup](https://docs.pingcap.com/tidb/stable/tiup-documentation-guide) is a wonderful tool to manage different cluster components (TiDB, PD, Prometheus, etc) for TiDB. However, it provides binary installation only that may mess up your development environment.

We create this image so that we can run tests on TiDB/TiKV inside Docker via [oomplay](https://github.com/oom-ai/oomplay), a playground manager for [oomstore](https://github.com/oom-ai/oomstore). This keeps our development environment clean.

Built images are pushed into [dockerhub](https://hub.docker.com/r/oomai/tiup/tags). To pull, run:

```
docker pull oomai/tiup
```
