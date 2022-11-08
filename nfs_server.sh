#!/bin/bash
#This is the NFS server script#
curl -4 authconfig.me
sudo systemctl start nfs
firewall-cmd --zone=public --add-port=2049/tcp --permanent
firewall-cmd --zone=public --add-port=111/tcp --permanent
firewall-cmd --zone=public --add-port=20048/tcp --permanent
firewall-cmd --zone=public --add-port=2049/udp --permanent
firewall-cmd --zone=public --add-port=111/udp --permanent
firewall-cmd --zone=public --add-port=2049/udp --permanent
firewall-cmd --reload
mount -t nfs 10.2.6.0/23:/usr_ome_dir/user_home_dir
