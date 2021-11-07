~/Documents/GitHub/DevOpsWithDocker/part_1/1.9$ touch text.log
~/Documents/GitHub/DevOpsWithDocker/part_1/1.9$ docker run -d -v "$(pwd)/text.log://usr/src/app/text.log" devopsdockeruh/simple-web-service:alpine
Unable to find image 'devopsdockeruh/simple-web-service:alpine' locally
alpine: Pulling from devopsdockeruh/simple-web-service
ba3557a56b15: Pull complete 
1dace236434b: Pull complete 
4f4fb700ef54: Pull complete 
Digest: sha256:dd4d367476f86b7d7579d3379fe446ae5dfce25480903fb0966fc2e5257e0543
Status: Downloaded newer image for devopsdockeruh/simple-web-service:alpine
4fca1624bac3144835ec403e4e3c49251225bf687e6916cbb3276ab47180e0b2
~/Documents/GitHub/DevOpsWithDocker/part_1/1.9$ tail -f ./text.log
Secret message is: 'You can find the source code here: https://github.com/docker-hy'
2021-11-07 19:34:31 +0000 UTC
2021-11-07 19:34:33 +0000 UTC
2021-11-07 19:34:35 +0000 UTC
2021-11-07 19:34:37 +0000 UTC
2021-11-07 19:34:39 +0000 UTC
Secret message is: 'You can find the source code here: https://github.com/docker-hy'
2021-11-07 19:34:41 +0000 UTC
2021-11-07 19:34:43 +0000 UTC
2021-11-07 19:34:45 +0000 UTC
2021-11-07 19:34:47 +0000 UTC
2021-11-07 19:34:49 +0000 UTC
Secret message is: 'You can find the source code here: https://github.com/docker-hy'
2021-11-07 19:34:51 +0000 UTC
^C
~/Documents/GitHub/DevOpsWithDocker/part_1/1.9$ 
