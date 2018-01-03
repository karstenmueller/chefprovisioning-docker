FROM ubuntu:16.04
MAINTAINER karstenmueller

COPY . /build

ARG CHANNEL=stable
ARG VERSION=2.4.17
ENV DEBIAN_FRONTEND=noninteractive
ENV PATH=/opt/chefdk/bin:/opt/chefdk/embedded/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

RUN /build/prepare.sh

CMD ["/bin/bash"]
