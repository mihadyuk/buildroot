#!/bin/sh
mount -t debugfs ndev /sys/kernel/debug
cd /sys/kernel/debug/tracing || exit
echo function > current_tracer
echo imx_start_tx imx_stop_tx > set_ftrace_filter

