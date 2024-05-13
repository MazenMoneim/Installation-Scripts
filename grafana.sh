#!/bin/bash

#==== Install some required packages: ====#
sudo apt-get update
sudo apt-get install -y apt-transport-https software-properties-common wget



#==== Add the GPG key for the Grafana OSS repository, then add the repository ==#
wget -q -O - https://packages.grafana.com/gpg.key | sudo apt-key add -
sudo apt-get install ca-certificates
sudo add-apt-repository "deb https://packages.grafana.com/oss/deb stable main"

#==== Install the Grafana package ===#
sudo apt-get update
sudo apt-get install grafana=9.2.3

#=== Enable and start the grafana-server service ==#
sudo systemctl enable --now grafana-server

#------> You can also verify that Grafana is working by accessing it in a web browser at
#------> http://<Grafana_Server_Public IP>:3000
#------> Log in to Grafana with the username admin and password admin

sudo hostnamectl hostname grafana
