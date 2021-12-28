# docker-tiup

[Tiup](https://docs.pingcap.com/tidb/stable/tiup-documentation-guide) is a wonderful tool to manage different cluster components in the TiDB ecosystem.

We create this image to integrating tidb / tikv into [oomplay](https://github.com/oom-ai/oomplay), our playground manager for [oomstore](https://github.com/oom-ai/oomstore).

It can be also used to quickly start a tidb / tikv playground for testing, without worrying about making your local environment dirty.

Built images are pushed into [dockerhub](https://hub.docker.com/r/oomai/tiup/tags). Run the following command to pull it:

```
docker pull oomai/tiup
```
