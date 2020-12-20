#!/bin/sh
# Flash PWR and ACT LEDs in alternating pattern
# Set timers for ACT led flashing
cd /sys/class/leds/led0
sudo sh -c "echo timer > trigger"
sudo sh -c "echo 500 > delay_on"
sudo sh -c "echo 500 > delay_off"
# Prepare to set timers for PWR led
cd /sys/class/leds/led1
# make sure they're alternating, sleep to exact moment
sleep 0.5
# Set timers for PWR led flashing, should alternate
sudo sh -c "echo timer > trigger"
sudo sh -c "echo 500 > delay_on"
sudo sh -c "echo 500 > delay_off"
