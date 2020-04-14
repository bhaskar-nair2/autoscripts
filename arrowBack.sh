#!/bin/sh
cd ~/Documents/arrow-clothing/arrow-backend-master
git pull
find . -maxdepth 4 -path ./node_modules -prune -o -name "package.json" -type f  -exec echo {} \; -exec npm install \;
cd ../
docker-compose -f docker-compose.yml up -d
docker logs -f --tail 10 arrow-backend-master_api_1
