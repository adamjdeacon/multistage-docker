FROM alpine/git as base
WORKDIR /code
RUN git clone https://github.com/hashicorp/terraform.git

FROM golang AS builder
WORKDIR /code
COPY --from=base /code ./

RUN cd terraform && \
  /bin/bash ./scripts/build.sh