FROM ubuntu:20.04
USER root

COPY entrypoint.sh /entrypoint.sh

RUN apt update && apt upgrade -y && \
    apt install -y nodejs && \
    apt install -y npm
    
RUN NODE_ENV=development npm i

RUN npm install npm@latest -g && \
    npm install n -g && \
    n latest

RUN chmod +x entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]