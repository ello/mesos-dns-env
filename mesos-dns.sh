#!/bin/bash
DOMAIN="${MESOS_DNS_DOMAIN:-mesos}"
RESOLVERS=$(cat /etc/resolv.conf | sed -n '/^nameserver/p' | sed -e 's/nameserver\ //g' | sed -n '/127.0.0.1/!p' | paste -s -d"," -)
cat config-template.json | jq ".zk = \"${ZK}\" | .domain = \"${DOMAIN}\" | .resolvers = (\"${RESOLVERS}\" | split(\",\"))" > config.json
/mesos-dns -v 2 -config=config.json
