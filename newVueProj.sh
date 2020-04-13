#!/bin/bash
echo location of the project?
read location
cd $location
echo Enter the name of the project
read projName
docker run -it --rm -v /$(pwd):/app -w /app princestark/vuedock vue create $projName

