#!/bin/sh

#Write profile to apparmor
sudo cp attacked /etc/apparmor.d
sudo apparmor_parser -r -W /etc/apparmor.d/attacked
