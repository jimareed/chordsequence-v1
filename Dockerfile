FROM node:0.12.2
ENV VERSION=v0.12.2 CMD=node DOMAIN=nodejs.org
ADD . /src
RUN cd /src; npm install
EXPOSE 8080
CMD ["node" , "/src/index.js"]