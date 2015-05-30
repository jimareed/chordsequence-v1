# chordsequence

Chord Sequence is a simple editor for editing guitar songs in the ChordPro format.  It's useful when the online version of a song isn't quite the way you like to play it.

![Alt text](/src/assets/images/main-page.png "Chord Sequence Main Page")


It's organized into two services, a frontend node.js service (chordsequence), and a backend tomcat service (chordsequence-platform).  The node.js service is fairly new, most UI is still in the tomcat service but will be migrated over time to node.js.  It uses docker-deployer to auto deploy new frontend builds when they are available:

![Alt text](/doc/architecture.png "Chord Sequence Architecture")


## nginx setup

```
sudo -i
yum install nginx
service nginx start
cd /etc/nginx
vi nginx.conf
add proxy_pass:
  server {
  ...
  location / {
    proxy_pass http://localhost:8080;
  }

  location /chordsequence {
   proxy_pass http://{chordsequence-platform-host}:8080/chordsequence;
  }

  }

 service nginx restart
```
## docker-deployer setup

```
 follow instructions in docker-deployer repository
```
