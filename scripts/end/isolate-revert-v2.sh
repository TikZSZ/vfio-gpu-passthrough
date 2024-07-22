#!/bin/bash
# Helpful to read output when debugging
set -x

source "/etc/libvirt/hooks/kvm.conf"

#method 2
vfio-isolate restore $UNDOFILE
taskset -pc $TOTAL_CORES 2  # kthreadd reset
