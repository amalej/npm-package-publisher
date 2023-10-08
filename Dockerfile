FROM ubuntu
USER root

COPY entrypoint.sh /entrypoint.sh

RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y nodejs \
    npm

RUN chmod +x entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]