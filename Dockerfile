FROM ubuntu:16.04

RUN apt-get update && \
    apt-get install -y \
        git \
        curl && \
    useradd -d /bot -m -s /bin/bash -U bot

USER bot
WORKDIR /bot

COPY package.json /bot/

USER root
RUN npm install  && \
    ln -sf /usr/share/zoneinfo/America/Montreal /etc/localtime

CMD ["sh", "start.sh"]
