FROM alpine:3.6

# Update OS
RUN apk update && \
    apk upgrade && \
    apk add shadow \
    	tzdata

# Python dependencies
RUN apk add --no-cache \
        python3 \
        py-virtualenv

# Build environment dependencies
RUN apk add \
        make

# Bot user and environment
RUN useradd -d /bot -m -s /bin/bash -U bot

# Sys config
USER root
RUN ln -sf /usr/share/zoneinfo/America/Montreal /etc/localtime

# Env test
USER bot
COPY [ \
	"Makefile", \
	"requirements.txt", \
	"/bot/" \
     ]
WORKDIR /bot
RUN make

#CMD ["sh", "start.sh"]
