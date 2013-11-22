Vagrant box recipes to use with the new vagrant-aws provider.

This repository contains Vagrantfiles that can be used as base boxes for provisioning on EC2. Currently it just contains a boxes for Ubuntu 10.04, 12.04 and 12.10.  For Chef users you can use the vagrant-omnibus plugin to install chef.

To use, run:

    ./bin/package.sh
    vagrant box add aws-ubuntu-12.04 aws-ubuntu-12.04.box

And in your Vagrantfile:

    Vagrant.configure("2") do |config|
      config.vm.provider :aws do |aws|
        aws.ami = 'ami-3d4ff254'
        aws.access_key_id = "YOUR ACCESS KEY"
        aws.secret_access_key = "YOUR SECRET KEY"
        aws.keypair_name = "SSH KEYPAIR"
        aws.ssh_private_key_path = "PATH TO PRIVATE KEY"
        aws.ssh_username = "ubuntu"
      end
    end
