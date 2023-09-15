FROM ubuntu:22.04

RUN apt update && \
  apt install libatomic1 libc6 -y && \
  rm -rf /var/lib/apt/lists/*
COPY vhelloworld /vhelloworld
EXPOSE 8081
CMD ["/vhelloworld"]
