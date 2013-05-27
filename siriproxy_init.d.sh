#! /bin/sh
# /etc/init.d/siriproxy

### BEGIN INIT INFO
# Provides:          siriproxy
# Required-Start:    $remote_fs $syslog
# Required-Stop:     $remote_fs $syslog
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: Simple script to start a program at boot
# Description:       A simple script which will start / stop siriproxy 
### END INIT INFO

# If you want a command to always run, put it here

# Carry out specific functions when asked to by the system
case "$1" in
  start)
    echo "Starting siriproxy"
    # run application you want to start
  echo "" >> /var/log/siriproxy.log
	echo "" >> /var/log/siriproxy.log
	echo "------------- Server started ---------------" >> /var/log/siriproxy.log
	date >> /var/log/siriproxy.log
    /root/siriproxy/start_siriproxy.sh >> /var/log/siriproxy.log 2>&1 &
    ;;
  stop)
    echo "Stopping siriproxy"
    # kill application you want to stop
    killall ruby
    ;;
  *)
    echo "Usage: /etc/init.d/siriproxy {start|stop}"
    exit 1
    ;;
esac

exit 0
