#!/bin/bash
sudo yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm
sudo yum install -y ansible
ansible-playbook /vagrant/playbooks/test_pilot_00.yml
