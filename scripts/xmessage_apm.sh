#!/bin/sh
xmessage -fn "Ubuntu mono" -center -print `apm | grep Battery | awk '{print $1": "$3" "$6/60.0" "$7}' | sed 's/minutes/hores/g'` -timeout 3
