#!/bin/bash

## Enable CPU governor performance mode

# method 1

cat /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor
for file in /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor; do echo "performance" > $file; done
cat /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor

# method 2

# source "/etc/libvirt/hooks/kvm.conf"
# for i in {0..15}; do
# CPUL=/sys/devices/system/cpu/cpu$i/cpufreq
# echo
# # cpupower set -c ${i} -g performance --min 5300Mhz --max 5300Mhz example of achiveing the same with some util
# # sudo cpufreq-set -c ${i} -g performance --min 5300Mhz --max 5300Mhz;
# echo $CPU_MAX_FREQ | tee $CPUL/scaling_min_freq
# echo "performance" > $CPUL/scaling_governor;
# done
