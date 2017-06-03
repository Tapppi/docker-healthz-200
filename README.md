# docker-healthz-200
Tiny docker image with a web server responding to healthz checks

The embedded web server responds 200 to HTTP requests matching `GET /healthz` and 404 to everything else. 

This is useful as a default backend in cloud environments. The web server passes environment health checks but correctly responds with 404 to everything else (e.g. requests not matching any routing rules).

Specifically running an nginx controller behind a GCE load balancer on google cloud requires such behaviour to avoid failed health checks while maintaining a sensible default 404 response.

Copyright Tapani Moilanen 2017

