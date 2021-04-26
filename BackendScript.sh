#!/bin/bash
docker build -t testimg2 .
docker run -i --name tochekcont2 --network=gomathanetwork --ip 192.168.10.3 -p 6060:6060 testimg2 /bin/bash
docker run -it --name tochekcont2 testimg2 /bin/bash
docker start tochekcont2
docker exec tochekcont2 ./startup.sh
