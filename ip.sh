#!/bin/bash
. /etc/init.d/functions
for ip in {1..254}
do
  {
  ping -w 2 -c 2 172.16.1.$ip &>/dev/null
    if [ $? = 0 ];then 
      action 172.16.1.$ip /bin/true
    else
      action 172.16.1.$ip /bin/false
    fi
  } &
done

