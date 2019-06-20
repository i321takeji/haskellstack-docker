FROM ubuntu:18.04

ENV DEBCONF_NOWARNINGS yes
ENV DEBIAN_FRONTEND noninteractive

RUN sed -i.bak -e "s%http://.*.ubuntu.com/ubuntu/%http://ftp.jaist.ac.jp/pub/Linux/ubuntu/%g" /etc/apt/sources.list \
&& apt-get update && apt-get install -y --no-install-recommends \
  ca-certificates \
  curl \
  gcc \
  git \
  gnupg \
  libc6-dev \
  libffi-dev \
  libgmp-dev \
  make \
  netbase \
  zlib1g-dev \
  xz-utils \
&& apt-get clean && rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/* \
&& curl -sSL https://get.haskellstack.org/ | sh

ENV PATH $PATH:/root/.local/bin
