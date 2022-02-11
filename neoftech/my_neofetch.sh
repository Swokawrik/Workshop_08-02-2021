#!/bin/bash

email_sign="@"

echo -n $(whoami) ; echo -n $email_sign ;hostname
hostnamectl | grep "Operating System" | sed 's/Operating System/OS/'
hostnamectl | grep "Kernel"
echo -n "Uptime:" ; uptime
echo -n "Shell: "
$SHELL --version | head -n 1
echo "CPU`cat /proc/cpuinfo`" | grep "model name" | uniq | sed 's/model name/CPU/'
echo "Memory: `free -m | grep "Mem" | awk '{print $3}'`MiB / `free -m | grep "Mem" | awk '{print $2}'`MiB"
# echo -n "/"
# free -m | grep "Mem" | awk '{print $2}' ; echo "MiB"