FROM mesosphere/mesos-dns:latest
MAINTAINER Jay Zeschin <jay@ello.co>

RUN curl -o /usr/local/bin/jq -SL http://stedolan.github.io/jq/download/linux64/jq

COPY config-template.json .

CMD ["./mesos-dns.sh"]

