#!/bin/bash
# Toggle microphone capture


state=$(amixer -D pulse sset Capture toggle | awk '/Left: Capture/ {print $6}')
case "$state" in
  "[on]")
    xset -led named "Scroll Lock" off
  ;;
  "[off]")
    xset led named "Scroll Lock" on
  ;;
esac 

