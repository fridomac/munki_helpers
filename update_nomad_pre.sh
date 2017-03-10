#!/bin/bash

# 2017 F.Koch (parts re-used from Emily Kausaliks script for Jamf Pro (http://github.com/smashism)
# Script to use as a Pre-Install-Script when updating NoMAD through Munki.
# Post-Install-Script see update_nomad_post.sh



# Get current user and uid.
CURRENT_USER=$(/usr/bin/stat -f%Su /dev/console)
USER_ID=$(id -u "$CURRENT_USER")

sudo -u $CURRENT_USER launchctl unload /Library/LaunchAgents/com.trusourcelabs.NoMAD.plist

killall NoMAD
osascript -e "tell application \"NoMAD\" to quit"

exit 0