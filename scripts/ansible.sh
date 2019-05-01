#!/bin/bash -eux

# Install Ansible repository.
apt -y update && apt-get -y upgrade
apt -y install software-properties-common
apt-add-repository ppa:ansible/ansible

# Install Ansible.
apt -y update
apt -y install ansible

# install useful roles
ansible-galaxy install geerlingguy.nfs
ansible-galaxy install geerlingguy.packer-debian
