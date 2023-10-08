FROM ubuntu
USER root

COPY entrypoint.sh /entrypoint.sh

RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y nodejs \
    npm

RUN npm cache clean -f && \
    npm install -g n && \
    n stable

RUN chmod +x entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]