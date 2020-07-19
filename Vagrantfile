Vagrant.configure("2") do |config|
  config.vm.provision "file",
    source: "ssh/id_rsa",
    destination: "/home/vagrant/.ssh/id_rsa"
  
  public_key = File.read("ssh/id_rsa.pub")
  config.vm.provision "shell",
    path: "ssh/ssh_bootstrap.sh",
    args: "'#{public_key}'"
  
  config.vm.define "srv1" do |srv1|
    srv1.vm.box = "centos/8"
    srv1.vm.network "private_network", ip: "192.168.100.21"
    srv1.vm.hostname = "srv1.promon.local"
    srv1.vm.synced_folder ".", "/vagrant", type: "smb"
	
	srv1.vm.provider "virtualbox" do |vb|
	  vb.customize [
	    "modifyvm", :id,
		"--memory", "1024",
		"--cpus", "2"
	  ]
	end
  end
  
  config.vm.define "srv2" do |srv2|
    srv2.vm.box = "centos/8"
    srv2.vm.network "private_network", ip: "192.168.100.22"
    srv2.vm.hostname = "srv2.promon.local"
    srv2.vm.synced_folder ".", "/vagrant", type: "smb"
	
	srv2.vm.provider "virtualbox" do |vb|
	  vb.customize [
	    "modifyvm", :id,
		"--memory", "1024",
		"--cpus", "2"
	  ]
	end
  end
  
  config.vm.define "monitor" do |monitor|
    monitor.vm.box = "centos/8"
    monitor.vm.network "private_network", ip: "192.168.100.25"
    monitor.vm.hostname = "monitor.promon.local"
    monitor.vm.synced_folder ".", "/vagrant", type: "smb"
    monitor.vm.provision "shell",
    path: "scripts/ansible_bootstrap.sh"
	
	monitor.vm.provider "virtualbox" do |vb|
	  vb.customize [
	    "modifyvm", :id,
		"--memory", "1024",
		"--cpus", "2"
	  ]
	end
  end
end