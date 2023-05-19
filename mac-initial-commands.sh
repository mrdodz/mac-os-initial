#!/bin/sh

HOSTNAME=""
USERNAME=""

# Run without user
sudo scutil --set HostName $HOSTNAME
sudo scutil --set LocalHostName $HOSTNAME
sudo scutil --set ComputerName $HOSTNAME
dscacheutil -flushcache
sudo /System/Library/CoreServices/ManagedClient.app/Contents/Resources/createmobileaccount -D -n $USERNAME

## Manual commands
## Before user interaction, create the user & bstu password variable in the terminal and then clear screen
# BSTU_PASS='thepassword'
# USERNAME='theuser'
# clear
# sudo sysadminctl -adminUser bstu -adminPassword $BSTU_PASS -secureTokenOn $USERNAME -password 

# (logout/login with user as an admin)
# Before user interaction, create the bstu password variable in the terminal and then clear screen
# BSTU_PASS='thepassword'
# USERNAME='theuser'
# clear
# sudo sysadminctl -adminUser $USERNAME -adminPassword *** -secureTokenOff bstu -password $BSTU_PASS
# sudo diskutil apfs updatePreboot 
