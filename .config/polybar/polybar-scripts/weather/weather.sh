#!/bin/bash

curl -s "https://wttr.in/Mococa?0QT" | sed -n 2p | cut -c 17-27 | sed 's/ *$//g'
# curl -s "https://wttr.in/Mococa?format=j1" | jq -r '.current_condition[0] | "\(.temp_C) \(.FeelsLikeC)"' | awk '{ print ($0 != $1) ? $0"("$1") °C" : $0 "°C" }'
