# Docker-in-Docker make for Windows

This docker container is to allow docker builds via a makefile on windows using Docker-in-Docker.

## Setup

- In your docker settings, enable "Expose daemon on tcp://localhost:2375 without TLS"
- Create a file called make.bat for windows users in your repo

```
docker run --rm -it -v %cd%:/share --workdir /share -e "DOCKER_HOST=tcp://docker.for.win.localhost:2375" -e "SHARE_PATH=%cd%" dlip/docker-make %*
```

- Because this approach uses your windows docker daemon volume shares are expected to be the windows path like `c:/code/project`. Update your makefile in places you are using docker mounts to allow overriding the path. eg.

```
SHARE_PATH ?= $(shell pwd)

run:
  docker run -v "$(SHARE_PATH):/project" my-container
```
