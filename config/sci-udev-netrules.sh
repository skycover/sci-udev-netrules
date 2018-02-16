#! /bin/sh
### BEGIN INIT INFO
# Provides:          copynetrules
# Required-Start:    mountkernfs $local_fs
# Required-Stop: 
# Default-Start:     S
# Default-Stop:
# Short-Description: copy renerated by udev persistent-net rules into config file
# Description:
### END INIT INFO


case "$1" in
  start|"")
	if [ -f /run/udev/tmp-rules--70-persistent-net.rules ]; then
		cat /run/udev/tmp-rules--70-persistent-net.rules >>/etc/udev/rules.d/70-persistent-net.rules
	fi
	;;
  restart|reload|force-reload)
	echo "Error: argument '$1' not supported" >&2
	exit 3
	;;
  stop|status)
	# No-op
	;;
  *)
	echo "Usage: copynetrules.sh [start|stop]" >&2
	exit 3
	;;
esac

