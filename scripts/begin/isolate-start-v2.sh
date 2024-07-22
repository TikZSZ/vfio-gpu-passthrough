#!/bin/bash
# Helpful to read output when debugging
set -x

source "/etc/libvirt/hooks/kvm.conf"

vfio-isolate \
		-u $UNDOFILE \
		drop-caches \
		cpuset-modify --cpus C$HCPUS /system.slice \
		cpuset-modify --cpus C$HCPUS /user.slice \
		compact-memory \
		irq-affinity mask C$MCPUS

taskset -pc $HCPUS 2  # kthreadd only on host cores
 




