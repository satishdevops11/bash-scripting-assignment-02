#!/bin/bash

cpu=$(top -bn1 | grep "Cpu(s)" | awk '{print int($2)}')

if [ "$cpu" -gt 80 ]
then
    echo "CPU Usage is $cpu%. Please check the server." | mail -s "High CPU Alert" admin@example.com
    echo "Email notification sent."
else
    echo "CPU Usage is normal: $cpu%"
fi
