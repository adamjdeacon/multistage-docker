# Just a multistage build test

This repo is just me playing around with multistage docker images and a bit of github actions

This image has 3 stages;

* base which pulls down the git repo
* builder which builds terraform in go
* final which is just alpine with terraform in /usr/bin/

The size of the container at each stage are as follow:

| Stage       | Size        |
| ----------- | ----------- |
| base        | 241Mb       |
| build       | 10G         |
| final       | 84M         |

The final image is prety impressive condering terraform is ~77Mb

## Who wants badget? You gotta have a badge

[![Build Docker Image](https://github.com/adamjdeacon/multistage-docker/actions/workflows/docker.yml/badge.svg)](https://github.com/adamjdeacon/multistage-docker/actions/workflows/docker.yml)
