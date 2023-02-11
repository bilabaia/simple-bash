#!/bin/bash

### script to plan reboot. run by reboot-planner.service which is planned and started by reboot-planner.timer
### daemon runs after 5 days system runtime and plans reboot



# === vars to set
# DELAY used with option DELAYED REBOOT which sets next reboot after n-period

DELAY=5

# RBTIME used whith option PLANNED REBOOT when we need to make precise time planning

RBTIME=04:00



# === options to enable

# DELAYED REBOOT
# shutdown -r +$DELAY

# PLANNED REBOOT
shutdown -r $RBTIME

