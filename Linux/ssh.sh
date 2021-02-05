#!/bin/bash

cp ssh.zip /home/javier/

cd /home/javier/
echo Type ssh zip password: 
read pass
unzip -P $pass ssh.zip

# set permissions
chmod 700 .ssh
chmod 644 .ssh/id_rsa.pub
chmod 600 .ssh/id_rsa
chmod 755 .ssh/known_hosts
chmod 755 .ssh/config

rm ssh.zip
