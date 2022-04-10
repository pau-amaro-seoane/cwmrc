#!/bin/sh

# Define paths to hydroxide and muttrc
# (https://github.com/emersion/hydroxide)
OHneg=$HOME/fitx_confg/mutt/hydroxide/hydroxide
MuttRC=$HOME/fitx_confg/mutt/muttrc/protonmail.muttrc

# Just in case of, kill all running processes
pkill -9 hydroxide

# Feed the password to the bridge and redirect output to /tmp
echo 'MY AMAZING PASSWORD COMES HERE' \
| $OHneg auth pau@protonmail.com >> /tmp/$$

# Fetch the bridge password from the /tmp file and remove it
bridgepasswd=`cat /tmp/$$ | awk '{print $4}'`
rm /tmp/$$

# Remove previous set imap_pass line from muttrc
sed -i '/^set imap_pass/d' $MuttRC

# Add the new line containing the bridge password
echo "set imap_pass = $bridgepasswd" >> $MuttRC

# Start services
$OHneg imap &>/dev/null &
$OHneg smtp &>/dev/null &

# Start mutt
export LC_CTYPE=ca_ES.UTF-8

xterm -fa "Ubuntu Mono" +sb -fs 10 -cc 46:48,47:48,63:48,37:48,38:48,35:48,58:48,45:48,126:48,43:48,61:48,64:48,36:48 -bg "#2f3238" -fg white -class "mutt" -e "mutt" -F $MuttRC
