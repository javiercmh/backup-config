#!/bin/bash

cp ssh.zip /home/javier/

cd /home/javier/
echo Type ssh password
read pass
unzip -P $pass ssh.zip

chmod +x permissions.sh
./permissions.sh

rm ssh.zip permissions.sh
