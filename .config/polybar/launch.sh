#!/usr/bin/env bash
killall -q polybar
#For wait until the process is down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

#Launch bar1
polybar bar1 2>&1 | tee -a /tmp/polybar1.log & disown
