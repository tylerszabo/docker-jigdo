FROM debian:10.5

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
  && apt-get install -y jigdo-file \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /output

ENTRYPOINT ["/usr/bin/jigdo-lite", "--scan", "/output"]
