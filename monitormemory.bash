#!/bin/bash

memory=$(free | awk '/Mem:/ {printf("%.0f"), $3/$2 * 100}')

if [ "$memory" -gt 80 ]
then
    echo "Memory usage is $memory%. Please check the server." | mail -s "Memory Alert" admin@example.com
    echo "Email notification sent."
else
    echo "Memory usage is normal: $memory%"
fi
