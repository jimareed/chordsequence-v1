FROM node:0.12.2
ENV VERSION=v0.12.2 CMD=node DOMAIN=nodejs.org
RUN mkdir /opt; cd /opt; npm install sails -g; sails new chordsequence
ADD src /src
ADD start.sh /start.sh
RUN cd /src; npm install; chmod 777 /start.sh
EXPOSE 8080
# CMD ["node" , "/src/index.js"]
CMD ["/start.sh"]