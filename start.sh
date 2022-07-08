#!/bin/bash
echo -n "Enter Rstudio server's password: "
read -s PASSWORD
echo ""
sed -e "s/environment:/environment:\n      - PASSWORD=$PASSWORD/g" docker-compose_pre.yml > docker-compose.yml
sudo docker-compose up 
