#!/bin/bash

while true; do
    clear
    echo "1. Set the shutdown timer"
    echo "2. Cancel shutdown"
    echo
    read -p "Please select a process (1 or 2): " selection

    if [ "$selection" == "1" ]; then
        read -p "Enter the shutdown time in minutes:seconds (e.g., 2:30): " minute_second

        IFS=':' read -r minute second <<< "$minute_second"
        total_second=$((minute*60+second))

        echo
        shutdown -h $total_second
        break

    elif [ "$selection" == "2" ]; then
        echo
        shutdown -c
        break

    else
        echo
        echo "Invalid option! Please select 1 or 2."
        sleep 3
    fi
done
