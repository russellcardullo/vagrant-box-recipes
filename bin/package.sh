#!/bin/bash
cwd=`pwd`

boxes="aws-ubuntu-10.04 aws-ubuntu-12.04 aws-ubuntu-12.10 aws-ubuntu-13.04"

for box in $boxes
do
  cd $cwd/$box
  tar cvzf ../boxes/$box.box ./metadata.json ./Vagrantfile
done
