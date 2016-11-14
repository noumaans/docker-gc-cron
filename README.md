# docker-gc-cron

Built on top of spotify/docker-gc, and provides cron / non-cron support for local and kubernetes use.

Built for Docker 1.11.2, which is the current version of docker on Kubernetes clusters in GCE and GKE.

Environment variables:
NO_CRON=1
Runs a simple docker cleanup without any cron functionality.

Other supported flags from docker-gc:
```
FORCE_IMAGE_REMOVAL
DRY_RUN
```

Mount-paths required are:
```
/var/run/docker.sock
/etc
```
