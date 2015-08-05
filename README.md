# mesos-dns-env
Docker build for mesos-dns, with settings configurable via environment variables instead of JSON

## Usage
`docker run --name mesos-dns -e 'ZK=<zookeeper url>' ello/mesos-dns-env:latest`
