#!/bin/bash
ansible-playbook -i /vagrant/playbooks/env/topology /vagrant/playbooks/test_pilot_01.yml
ansible-playbook -i /vagrant/playbooks/env/topology /vagrant/playbooks/test_pilot_02.yml --tags download
ansible-playbook -i /vagrant/playbooks/env/topology /vagrant/playbooks/test_pilot_02.yml --tags installSimple
ansible-playbook -i /vagrant/playbooks/env/topology /vagrant/playbooks/test_pilot_02.yml --tags installAsService
ansible-playbook -i /vagrant/playbooks/env/topology /vagrant/playbooks/test_pilot_03.yml
ansible-playbook -i /vagrant/playbooks/env/topology /vagrant/playbooks/test_pilot_04.yml
ansible-playbook -i /vagrant/playbooks/env/topology /vagrant/playbooks/test_pilot_05.yml
ansible-playbook -i /vagrant/playbooks/env/topology /vagrant/playbooks/test_pilot_06.yml
