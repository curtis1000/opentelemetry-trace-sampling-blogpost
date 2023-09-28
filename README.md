# opentelemetry-trace-sampling-blogpost
This repository was forked from [grafana/opentelemetry-trace-sampling-blogpost](https://github.com/grafana/opentelemetry-trace-sampling-blogpost) and modified with the following goals:

- isolate the example to just the node app 
- use an env var to pass in the otlp collector endpoint
- convert the demo from docker-compose to kubernetes
- add resource attributes for environment, namespace, and pod 
- add scripts to build and push the container image

With the necessary [resource attributes](https://github.com/curtis1000/opentelemetry-trace-sampling-blogpost/blob/5c933715f5ffa9bbac149848f00ba59ee7ee48ac/src/tracing.js#L25-L28) in place, we can search for traces in the following ways (traceQL):

By environment:
```
{ resource.deployment.environment = "staging" }
```

By namespace:
```
{ resource.deployment.environment = "staging" && resource.k8s.namespace.name = "otlp-examples" }
```

By pod:
```
{ resource.k8s.pod.name = "trace-sampling-example-856857c5f-jzb2m" }
```
