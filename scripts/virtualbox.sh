#!/bin/bash -eux

echo "Installing Virtualbox Guest Utils"
apt-get -y install dkms build-essential linux-headers-$(uname -r)
VBOX_VERSION=$(cat /home/vagrant/.vbox_version)
mount -o loop ~/VBoxGuestAdditions_$VBOX_VERSION.iso /mnt
sh /mnt/VBoxLinuxAdditions.run
umount /mnt

rm ~/VBoxGuestAdditions_$VBOX_VERSION.iso
