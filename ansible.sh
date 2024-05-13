#!/bin/bash
#========= Installing Ansible =========#
sudo apt update
sudo apt install software-properties-common -y
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install ansible -y

#========== Create ansible dir, config file and inventory file ====# 
sudo mkdir /etc/ansible
sudo touch /etc/ansible/{ansible.cfg,hosts}

sudo useradd ansible

#========== Change Server Name ========#
sudo hostnamectl hostname ansible
