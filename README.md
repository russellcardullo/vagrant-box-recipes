Vagrant box recipes to use with the new vagrant-aws provider.

This repository contains Vagrantfiles that can be used as base boxes for provisioning on EC2 with Chef. Currently it just contains a box for Ubuntu 12.04.  When provisioning the box will automatically install the latest version of Chef via the omnibus isntaller.

To use, run:

    ./bin/package.sh
    vagrant box add aws-ubuntu-12.04-chef aws-ubuntu-12.04-chef.box

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
