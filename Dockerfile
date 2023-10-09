FROM ubuntu
USER root

COPY entrypoint.sh /entrypoint.sh

RUN apt update && apt upgrade -y && \
    apt install -y nodejs \
    npm

RUN chmod +x entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]