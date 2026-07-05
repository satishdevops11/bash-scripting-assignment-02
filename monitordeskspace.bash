#!/bin/bash

disk=$(df -h / | awk 'NR==2 {print $5}' | sed 's/%//')

if [ "$disk" -gt 80 ]
then
    echo "Disk usage is $disk%. Please check the server." | mail -s "Disk Space Alert" admin@example.com
    echo "Email notification sent."
else
    echo "Disk usage is normal: $disk%"
fi
