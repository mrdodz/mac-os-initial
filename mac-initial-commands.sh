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
