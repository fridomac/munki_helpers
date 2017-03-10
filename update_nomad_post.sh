#!/bin/bash

# 2017 F.Koch (parts re-used from Emily Kausaliks script for Jamf Pro (http://github.com/smashism)
# Script to use as a Post-Install-Script when updating NoMAD through Munki.
# Pre-Install-Script see update_nomad_pre.sh

# Get current user and OS information.
CURRENT_USER=$(/usr/bin/stat -f%Su /dev/console)
USER_ID=$(id -u "$CURRENT_USER")

sudo -u $CURRENT_USER launchctl load /Library/LaunchAgents/com.trusourcelabs.NoMAD.plist

exit 0