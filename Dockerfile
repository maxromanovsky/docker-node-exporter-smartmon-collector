FROM alpine

RUN apk add --update smartmontools moreutils bash
WORKDIR /bin
RUN wget https://raw.githubusercontent.com/janw/node-exporter-textfile-collector-scripts/master/smartmon.sh \
    && chmod a+x smartmon.sh

COPY entrypoint.sh .

USER root
VOLUME ["/var/lib/node_exporter"]
ENTRYPOINT ["/bin/entrypoint.sh"]
