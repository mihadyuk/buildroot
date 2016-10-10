#!/bin/sh
#f tells to trace child process.
#-e trace=<calls to be traced>
#in this case we trace open,close,read calls.
strace -fttxy -e trace=open,close,read,select -o /root/trace.txt /root/navigator.elf &
#strace -fttxy -o /root/trace.txt /root/navigator.elf &


