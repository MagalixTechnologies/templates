# Apache Storm base image for Docker

This image is the base for nimbus and worker images, and a CLI
environment for interacting with a Storm cluster.

# Configure (conf.sh)

* ```Provide ZOOKEEPER_SERVICE_HOST ip or hostname in conf.sh```
* ```Provide NIMBUS_SERVICE_HOST ip or hostname in conf.sh```

# Build

* ```docker build -t <name>/storm-base .```

# Use

* ```docker run -it <name>/storm-base sh```
* ```cd /opt/apache-storm```
* ```./bin/storm ...```
