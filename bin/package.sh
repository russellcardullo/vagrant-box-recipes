#!/bin/bash
cwd=`pwd`

cd $cwd/aws-ubuntu-12.10
tar cvzf ../boxes/aws-ubuntu-12.10.box ./metadata.json ./Vagrantfile

cd $cwd/aws-ubuntu-12.04
tar cvzf ../boxes/aws-ubuntu-12.04.box ./metadata.json ./Vagrantfile

cd $cwd/aws-ubuntu-10.04
tar cvzf ../boxes/aws-ubuntu-10.04.box ./metadata.json ./Vagrantfile
