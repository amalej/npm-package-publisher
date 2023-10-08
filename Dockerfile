FROM ubuntu
USER root

COPY entrypoint.sh /entrypoint.sh

RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y nodejs \
    npm

RUN sudo npm cache clean -f && \
    sudo npm install -g n && \
    sudo n stable

RUN chmod +x entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]