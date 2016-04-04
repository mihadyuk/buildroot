#!/bin/sh

#mount second drive for data, logs, etc.
case "$1" in
  start)
 	echo "Mounting second drive..."
        mount /dev/mmcblk0p2 /disk-data
	;;
  stop)
	echo -n "Unmounting second drive..."
        umount /disk-data
	;;
  restart|reload)
	"$0" stop
	"$0" start
	;;
  *)
	echo "Usage: $0 {start|stop|restart}"
	exit 1
esac

exit $?
