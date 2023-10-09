FROM ubuntu
USER root

COPY entrypoint.sh /entrypoint.sh

RUN apt update && apt upgrade -y && \
    apt install -y nodejs && \
    apt install -y npm

RUN chmod +x entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]