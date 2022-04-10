#!/bin/sh

            # ********************  Define mutt torifying it ******************* #

MyMutt='/usr/local/bin/mutt'

            # ******************** Define muttrc ******************* #

MuttRC=$HOME/fitx_confg/mutt/muttrc/riseuponion.muttrc

            # ******************** Needed for utf-8 encoding ******************* #

export LC_CTYPE=ca_ES.UTF-8

            # ******************** Launch it ******************* #

xterm -fa "Ubuntu Mono" +sb -fs 10 \
      -cc 46:48,47:48,63:48,37:48,38:48,35:48,58:48,45:48,126:48,43:48,61:48,64:48,36:48\
      -bg "#2f3238" -fg white -class "mutt riseup onion" \
      -e "doas rcctl stop tor && doas rcctl start tor && dsocks-torify.sh $MyMutt -F $MuttRC 2>/dev/null"

# Note that the latest requires
# the following line in "/etc/doas.conf" :
# permit nopass :pau cmd rcctl
