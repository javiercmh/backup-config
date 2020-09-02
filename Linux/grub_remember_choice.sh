#!/bin/bash

# remember choice
sed -i "/GRUB_DEFAULT=0/c\GRUB_DEFAULT=saved\nGRUB_SAVEDEFAULT=true" /etc/default/grub
update-grub
