#!/bin/bash
docker build -t Backendimg .
docker run -i --name Backendcont --network=gomathanetwork --ip 192.168.10.3 -p 6060:6060 Backendimg /bin/bash
docker run -it --name Backendcont Backendimg /bin/bash
docker start Backendcont
docker exec Backendcont ./startup.sh
