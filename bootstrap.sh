#!/usr/bin/env bash

if [[ ! $(which add-apt-repository) ]]; then
  sudo apt-get update
  sudo apt-get install -y python-software-properties
fi

if [[ ! $(which ansible) ]]; then
  sudo add-apt-repository -y ppa:rquillo/ansible
  sudo apt-get update
  sudo apt-get install -y ansible
fi

ansible-playbook /vagrant/ansible_playbook.yml
