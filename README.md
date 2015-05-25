# chordsequence

Chord Sequence is a simple editor for editing guitar songs in the ChordPro format (http://chordsequence.com).  

It's organized into two services a frontend node.js service and a backend tomcat service:

![alt tag](http://jimareed/chordsequence-architecture.png)



## run docker image

```
docker login
docker pull jimareed/chordsequence
docker run -p 8080:8080 jimareed/chordsequence
docker ps
docker stop <name>
```

## debug docker image

```
docker ps
docker commit <name> mysnapshot
docker run -t -i mysnapshot /bin/bash
docker rmi mysnapshot
```