FROM ubuntu:22.04

RUN apt update && \
  apt install libatomic1 libc6 -y && \
  rm -rf /var/lib/apt/lists/*
COPY vhelloworld /app/vhelloworld
COPY templates /app/templates
EXPOSE 8081
WORKDIR "/app"
CMD ["/app/vhelloworld"]
