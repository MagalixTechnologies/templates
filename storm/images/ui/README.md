# Apache Storm UI image for Docker

This image is the UI for a Storm cluster.

# Configure (conf.sh)

* ```Provide ZOOKEEPER_SERVICE_HOST ip or hostname in conf.sh```
* ```Provide NIMBUS_SERVICE_HOST ip or hostname in conf.sh```

# Build

* ```docker build -t <name>/storm-ui .```

# Use

* ```docker run -d <name>/storm-ui```
