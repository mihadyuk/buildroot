#!/bin/sh

#mount second drive for data, logs, etc.
case "$1" in
  start)
 	echo "Running kexec..."
        /root/run-kexec.sh
	;;
  stop)
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

