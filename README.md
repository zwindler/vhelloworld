# vhelloworld

![](/binaries/vhelloworld.png)

## Goal

This is a trivial v(lang) program which runs a vweb server and outputs a string "hello from HOSTNAME" with hostname being the hostname of the host/container running the vlang binary.

The [manifests/](manifests/) folder contains a Kubernetes *DaemonSet* and *Service* manifest to play with it.

There also is a docker image on [Dockerhub](https://hub.docker.com/repository/docker/zwindler/vhelloworld/general)

## Trivia

The name of the project vhelloworld is a play on word with V+helloword and the vélo, which is the french word for bike.

I generated an absurd image for this project with stable diffusion because I'm weird.
