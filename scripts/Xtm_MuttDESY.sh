#!/bin/sh

MuttRC=$HOME/fitx_confg/mutt/muttrc/desy.muttrc

export LC_CTYPE=ca_ES.UTF-8

xterm -fa "Ubuntu Mono" +sb -fs 10 \
      -cc 46:48,47:48,63:48,37:48,38:48,35:48,58:48,45:48,126:48,43:48,61:48,64:48,36:48 \
      -bg "#2f3238" -fg white -class "mutt" -e "mutt \
      -F $MuttRC"
