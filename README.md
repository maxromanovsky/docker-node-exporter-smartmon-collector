# Docker image builder for node-exporter smartmon collector

[![GitHub tag (latest by date)](https://img.shields.io/github/v/tag/maxromanovsky/docker-node-exporter-smartmon-collector)](https://github.com/maxromanovsky/docker-node-exporter-smartmon-collector)
[![Docker Image Version (latest semver)](https://img.shields.io/docker/v/maxromanovsky/node-exporter-smartmon-collector)](https://hub.docker.com/r/maxromanovsky/node-exporter-smartmon-collector)
![Docker Image (latest) CI](https://github.com/maxromanovsky/docker-node-exporter-smartmon-collector/workflows/Docker%20Image%20(latest)%20CI/badge.svg)
![Docker Image (release) CI](https://github.com/maxromanovsky/docker-node-exporter-smartmon-collector/workflows/Docker%20Image%20(release)%20CI/badge.svg)

## Usage

```bash
docker run --rm -e INTERVAL=1 -v`pwd`:/var/lib/node_exporter maxromanovsky/node-exporter-smartmon-collector:latest

# debug
docker run --rm -it -v`pwd`:/var/lib/node_exporter maxromanovsky/node-exporter-smartmon-collector:latest /bin/ash
```

## Configuration

| Environment variable name | Description | Defaults |
|-------------------------|-----------|--------|
| `INTERVAL` | Metrics update interval in seconds | `300` |

## References

- https://raw.githubusercontent.com/prometheus-community/node-exporter-textfile-collector-scripts/master/smartmon.sh
- https://github.com/janw/node-exporter-textfile-collector-scripts/blob/master/smartmon.sh
- https://github.com/prometheus-community/node-exporter-textfile-collector-scripts
- https://github.com/galexrt/docker-node_exporter-smartmon

## Repository secrets

- DOCKER_PASSWORD
- DOCKER_USERNAME
- SLACK_WEBHOOK
