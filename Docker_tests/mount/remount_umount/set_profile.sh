#!/bin/sh

#Write profile to apparmor
sudo cp remount_umount /etc/apparmor.d
sudo apparmor_parser -r -W /etc/apparmor.d/remount_umount
