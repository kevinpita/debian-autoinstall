#!/bin/bash

sed -i '/GRUB_DISABLE_OS_PROBER/s/^#//g' /etc/default/grub

themes_dir="/home/${SUDO_USER}/clone/grub2-themes"

git clone https://github.com/vinceliuice/grub2-themes "${themes_dir}" >logs/grub.txt 2>&1

"${themes_dir}/install.sh" -b -t vimix >logs/grub.txt 2>&1
