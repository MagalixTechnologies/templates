# Spark
**Apache Spark** is a fast and general-purpose cluster computing system including Apache Zeppelin.

* http://spark.apache.org/
* https://zeppelin.apache.org/

This application will manage the following:

* 1 x Spark Master with port 8080 exposed on an external LoadBalancer

* 3 x Spark Workers with HorizontalPodAutoscaler to scale to max 10 pods when CPU hits 50% of 100m

* 1 x Zeppelin with port 8080 exposed on an external LoadBalancer


## Installation
You can install Spark on Magalix through few simple steps:

1- Create new app

2- Select Spark template from the Data Science Apps templates

3- You can now get the running application URL from the console, by clicking Endpoints 
![Application Endpoints](../../docs/resources/mgx_endpoint.png "Application Endpoints")


## Configuration

The following tables lists the configurable parameters of the Spark chart and their default values.

### Spark Master

| Parameter               | Description                        | Default                                                    |
| ----------------------- | ---------------------------------- | ---------------------------------------------------------- |
| `Master.Name`           | Spark master name                  | `spark-master`                                             |
| `Master.Image`          | Container image name               | `gcr.io/google_containers/spark`                           |
| `Master.ImageTag`       | Container image tag                | `1.5.1_v3`                                                 |
| `Master.Replicas`       | k8s deployment replicas            | `1`                                                        |
| `Master.Component`      | k8s selector key                   | `spark-master`                                             |
| `Master.Cpu`            | container requested cpu            | `100m`                                                     |
| `Master.Memory`         | container requested memory         | `512Mi`                                                    |
| `Master.ServicePort`    | k8s service port                   | `7077`                                                     |
| `Master.ContainerPort`  | Container listening port           | `7077`                                                     |
| `Master.DaemonMemory`   | Master JVM Xms and Xmx option      | `1g`                                                       |

### Spark WebUi

|       Parameter       |           Description            |                         Default                          |
|-----------------------|----------------------------------|----------------------------------------------------------|
| `WebUi.Name`          | Spark webui name                 | `spark-webui`                                            |
| `WebUi.ServicePort`   | k8s service port                 | `8080`                                                   |
| `WebUi.ContainerPort` | Container listening port         | `8080`                                                   |

### Spark Worker

| Parameter                    | Description                        | Default                                                    |
| -----------------------      | ---------------------------------- | ---------------------------------------------------------- |
| `Worker.Name`                | Spark worker name                  | `spark-worker`                                             |
| `Worker.Image`               | Container image name               | `gcr.io/google_containers/spark`                           |
| `Worker.ImageTag`            | Container image tag                | `1.5.1_v3`                                                 |
| `Worker.Replicas`            | k8s hpa and deployment replicas    | `3`                                                        |
| `Worker.ReplicasMax`         | k8s hpa max replicas               | `10`                                                       |
| `Worker.Component`           | k8s selector key                   | `spark-worker`                                             |
| `Worker.Cpu`                 | container requested cpu            | `100m`                                                     |
| `Worker.Memory`              | container requested memory         | `512Mi`                                                    |
| `Worker.ContainerPort`       | Container listening port           | `7077`                                                     |
| `Worker.CpuTargetPercentage` | k8s hpa cpu targetPercentage       | `50`                                                       |
| `Worker.DaemonMemory`        | Worker JVM Xms and Xmx setting     | `1g`                                                       |
| `Worker.ExecutorMemory`      | Worker memory available for executor | `1g`                                                       |



### Zeppelin

|       Parameter         |           Description            |                         Default                          |
|-------------------------|----------------------------------|----------------------------------------------------------|
| `Zeppelin.Name`         | Zeppelin name                    | `zeppelin-controller`                                    |
| `Zeppelin.Image`        | Container image name             | `gcr.io/google_containers/zeppelin`                      |
| `Zeppelin.ImageTag`     | Container image tag              | `v0.5.5_v2`                                              |
| `Zeppelin.Replicas`     | k8s deployment replicas          | `1`                                                      |
| `Zeppelin.Component`    | k8s selector key                 | `zeppelin`                                               |
| `Zeppelin.Cpu`          | container requested cpu          | `100m`                                                   |
| `Zeppelin.ServicePort`  | k8s service port                 | `8080`                                                   |
| `Zeppelin.ContainerPort`| Container listening port         | `8080`                                                   |

