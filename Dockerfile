FROM node:0.12.2
ENV VERSION=v0.12.2 CMD=node DOMAIN=nodejs.org
RUN mkdir /opt; cd /opt; npm install sails -g; sails new chordsequence; cd /opt/chordsequence
ADD src /src
RUN cp -ur /src/* /opt/chordsequence
#ADD ./start.sh /start.sh
#RUN cd /src; npm install; chmod 777 /start.sh
EXPOSE 1337
WORKDIR /opt/chordsequence
CMD ["sails" , "lift"]