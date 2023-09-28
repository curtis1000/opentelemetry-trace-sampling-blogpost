# opentelemetry-trace-sampling-blogpost
This repository was forked from [grafana/opentelemetry-trace-sampling-blogpost](https://github.com/grafana/opentelemetry-trace-sampling-blogpost) and modified with the following goals:

- isolate the example to just the node app 
- use an env var to pass in the otlp collector endpoint
- convert the demo from docker-compose to kubernetes
- add scripts to build and push the container image

