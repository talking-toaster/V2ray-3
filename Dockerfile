FROM ubuntu:latest

COPY wwwroot.tar.gz /wwwroot/wwwroot.tar.gz
COPY build.sh /build.sh

RUN set -ex\
    && apt update -y \
    && apt upgrade -y \
    && apt install -y wget unzip qrencode\
    && chmod +x /build.sh

CMD /build.sh
