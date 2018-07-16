FROM maven:3.5.4-jdk-10
RUN apt-get update -q \
  && DEBIAN_FRONTEND=noninteractive apt-get install -qy libargon2-0-dev \
  && ln -s /usr/lib/x86_64-linux-gnu/libargon2.so /usr/lib/libargon2.so \
  && apt-get clean \
  && rm -rf /var/lib/apt
