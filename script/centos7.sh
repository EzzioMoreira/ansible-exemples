#!/bin/sh
cd /tmp

yum update -y

yum install -y kernel-devel kernel-headers gcc make cowsay perl dkms qt libgomp patch wget binutils glibc-headers glibc-devel font-forge


wget https://www.virtualbox.org/download/oracle_vbox.asc

rpm --import oracle_vbox.asc

wget http://download.virtualbox.org/virtualbox/rpm/el/virtualbox.repo -O /etc/yum.repos.d/virtualbox.repo

yum install -y VirtualBox-6.0

wget https://download.virtualbox.org/virtualbox/6.0.14/Oracle_VM_VirtualBox_Extension_Pack-6.0.14.vbox-extpack

vboxmanage extpack install Oracle_VM_VirtualBox_Extension_Pack-6.0.14.vbox-extpack -y

wget https://releases.hashicorp.com/vagrant/2.2.7/vagrant_2.2.7_x86_64.rpm

yum -y install vagrant_2.2.7_x86_64.rpm

yum -y install ansible
