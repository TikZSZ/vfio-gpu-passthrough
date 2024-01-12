#!/bin/bash
# Helpful to read output when debugging
set -x

source "/etc/libvirt/hooks/kvm.conf"

systemctl set-property --runtime -- user.slice AllowedCPUs=$TOTAL_CORES
systemctl set-property --runtime -- system.slice AllowedCPUs=$TOTAL_CORES
systemctl set-property --runtime -- init.scope AllowedCPUs=$TOTAL_CORES
#echo $TOTAL_CORES_MASK > /sys/bus/workqueue/devices/writeback/cpumask
#echo 1 > /sys/bus/workqueue/devices/writeback/numa
