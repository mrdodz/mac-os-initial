#!/bin/sh

HOSTNAME=""
USERNAME=""
ADMIN_USER=""
ADMIN_PASS=""
USER_PASS=""

sudo scutil --set HostName $HOSTNAME
sudo scutil --set LocalHostName $HOSTNAME
sudo scutil --set ComputerName $HOSTNAME
dscacheutil -flushcache
sudo /System/Library/CoreServices/ManagedClient.app/Contents/Resources/createmobileaccount -D -n $USERNAME
sudo sysadminctl -adminUser ADMIN -adminPassword $BSTU_PASS -secureTokenOn $USERNAME -password $USER_PASS

# (logout/login with user as an admin)
# sudo sysadminctl -adminUser ncambanis -adminPassword *** -secureTokenOff bstu -password ***
# sudo diskutil apfs updatePreboot 
