#!/bin/bash

Pi_user=biqu
Pi_IP=192.168.0.248

ORANGEPI_PATH=/home/lodge/Allwinner/orangepi-build
# ORANGEPI_PATH=/home/lodge/Allwinner/kernel4.9/orangepi-build

echo -e "\n ==== copy images ====\n"

cd $ORANGEPI_PATH/nfs_folder/
scp -r 5.13.0-sun50iw9 *.deb regulatory.* *.sh $Pi_user@$Pi_IP:/home/$Pi_user

#scp -r 5.13.0-sun50iw9 *.ko *.deb regulatory.* *.sh $Pi_user@$Pi_IP:/home/$Pi_user

echo -e "\n **** copy complete! ****\n"
