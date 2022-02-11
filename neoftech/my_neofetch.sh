#!/bin/bash

email_sign="@"

whoami ; echo -n $email_sign ;hostname
hostnamectl | grep "Operating System" | sed 's/Operating System/OS/'
hostnamectl | grep "Kernel"
echo "Uptime: " ; uptime
echo "Shell: "
$SHELL --version | head -n 1