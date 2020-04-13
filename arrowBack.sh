#!/bin/sh
cd ~/Documents/arrow-clothing/arrow-backend-master
git pull
npm i
cd services/
find . -maxdepth 3 -name "package.json" -type f  -exec echo {} \; -exec npm install \;
docker-compose -f docker-compose.yml up -d
docker logs -f --tail 10 arrow-backend-master_api_1
