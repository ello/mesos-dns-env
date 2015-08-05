FROM mesosphere/mesos-dns:latest

RUN curl -o /usr/local/bin/jq -SL http://stedolan.github.io/jq/download/linux64/jq

ADD config-template.json

CMD ["./mesos-dns.sh"]

