#!/bin/bash
cwd=`pwd`

cd $cwd/aws-ubuntu-12.10-chef
tar cvzf ../boxes/aws-ubuntu-12.10-chef.box ./metadata.json ./Vagrantfile

cd $cwd/aws-ubuntu-12.04-chef
tar cvzf ../boxes/aws-ubuntu-12.04-chef.box ./metadata.json ./Vagrantfile

cd $cwd/aws-ubuntu-10.04-chef
tar cvzf ../boxes/aws-ubuntu-10.04-chef.box ./metadata.json ./Vagrantfile
