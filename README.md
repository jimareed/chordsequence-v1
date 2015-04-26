# chordsequence



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