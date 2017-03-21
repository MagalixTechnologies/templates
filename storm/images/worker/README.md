# Apache Storm worker image for Docker

This image is a worker for a Storm cluster.

# Configure (conf.sh)

* ```Provide ZOOKEEPER_SERVICE_HOST ip or hostname in conf.sh```
* ```Provide NIMBUS_SERVICE_HOST ip or hostname in conf.sh```

# Build

* ```docker build -t <name>/storm-worker .```

# Use

* ```docker run -d <name>/storm-worker```
