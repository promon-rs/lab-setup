echo 'Copying public SSH key to VMs'
mkdir -p /home/vagrant/.ssh
chmod 700 /home/vagrant/.ssh
chmod -R 600 /home/vagrant/.ssh/id_rsa
echo $1 >> /home/vagrant/.ssh/authorized_keys
chmod -R 600 /home/vagrant/.ssh/authorized_keys
echo 'Host 192.168.100.*' >> /home/vagrant/.ssh/config
echo 'StrictHostKeyChecking accept-new' >> /home/vagrant/.ssh/config
echo 'UserKnownHostsFile /def/null' >> /home/vagrant/.ssh/config
chmod -R 600 /home/vagrant/.ssh/config
