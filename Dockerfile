FROM alpine/git as base
WORKDIR /code
RUN git clone https://github.com/hashicorp/terraform.git

FROM golang AS builder
RUN apt update && apt install -y zip
WORKDIR /code
COPY --from=base /code ./
RUN cd terraform && \
  /bin/bash ./scripts/build.sh

FROM alpine as final
COPY --from=builder /code/terraform/bin/terraform /usr/bin/terraform
