Vagrant.configure("2") do |config|

(1..2).each do |i|

config.vm.define "node-#{i}" do |node|
config.vm.box_download_insecure = true
node.vm.box = "centos/7"
node.vm.network "private_network", ip: "192.168.33.10#{i}"
node.vm.hostname = "node#{i}.metal.corp"

node.vm.provider "virtualbox" do |vb|
vb.memory = "512"
end

end

end

config.vm.define "node-3" do |node3|
config.vm.box_download_insecure = true
node3.vm.box = "centos/7"
node3.vm.network "private_network", ip: "192.168.33.103"
node3.vm.hostname = "node3.metal.corp"


node3.vm.provider "virtualbox" do |vb|
vb.memory = "1024"
end

end

config.vm.provision "ansible" do |ansible|
ansible.playbook = "playbook.yml"
end

end
