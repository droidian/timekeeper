#!/bin/sh

while true
do
    status=$(/usr/bin/getprop |grep "init.svc.*time_daemon*" |grep -o "\[running\]")
    if [ "$status" = "[running]" ] ; then
        echo "time_daemon service running"
        exit 0
    fi
    echo "Waiting for time_daemon service"
    sleep 1
done
exit 1
