#!/bin/bash
docker build -t testimg2 .
docker run -i --name tochekcont2 -p 6060:6060 testimg2  /bin/bash
docker run -it --name tochekcont2 testimg2  /bin/bash
docker start tochekcont2
docker exec tochekcont2 ./startup.sh
