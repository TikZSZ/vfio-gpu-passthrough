#!/bin/bash
# Helpful to read output when debugging
set -x

source "/etc/libvirt/hooks/kvm.conf"
 
systemctl set-property --runtime -- user.slice AllowedCPUs=$HOST_CORES
systemctl set-property --runtime -- system.slice AllowedCPUs=$HOST_CORES
systemctl set-property --runtime -- init.scope AllowedCPUs=$HOST_CORES
#echo $HOST_CORES_MASK > /sys/bus/workqueue/devices/writeback/cpumask
#echo 3 > /proc/sys/vm/drop_caches
#echo 0 > /sys/bus/workqueue/devices/writeback/numa

