FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get -y update && apt-get -y install curl tzdata pip mysql-client && \
        curl --proto '=https' --tlsv1.2 -sSf https://tiup-mirrors.pingcap.com/install.sh | sh && \
        ln -s /root/.tiup/bin/tiup /bin/tiup && \
        pip3 install tikv-client && \
        rm -rf /var/lib/{apt,dpkg,cache,log}/

ENV TIDB_VER=v5.3.0
ENV PLAYGROUND_VER=v1.8.1

RUN tiup install playground:${PLAYGROUND_VER}
RUN tiup install pd:${TIDB_VER}
RUN tiup install tikv:${TIDB_VER}
RUN tiup install tidb:${TIDB_VER}
RUN tiup install tiflash:${TIDB_VER}
RUN tiup install prometheus:${TIDB_VER}
RUN tiup install grafana:${TIDB_VER}

# PD
EXPOSE 2379/tcp

# Prometheus
EXPOSE 9090/tcp

# Grafana
EXPOSE 3000/tcp

# TiDB
EXPOSE 4000/tcp

# TiFlash
EXPOSE 3930/tcp

CMD ["tiup", "playground", "--host=0.0.0.0"]
