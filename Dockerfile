FROM node:0.12.2
ENV VERSION=v0.12.2 CMD=node DOMAIN=nodejs.org
RUN mkdir /opt; cd /opt; npm install sails -g; sails new chordsequence; rm -f /opt/chordsequence/views/homepage.ejs
RUN sed -i -- 's/New Sails App/Chord Sequence/g' /opt/chordsequence/views/layout.ejs
ADD src /src
RUN \cp -urf /src/* /opt/chordsequence
#ADD ./start.sh /start.sh
#RUN cd /src; npm install; chmod 777 /start.sh
EXPOSE 1337
WORKDIR /opt/chordsequence
CMD ["sails" , "lift"]