#!/bin/bash

while true; do
    clear
    echo "1. Set the shutdown timer"
    echo "2. Cancel shutdown"
    echo
    read -p "Please select a process (1 or 2): " selection

    if [ "$selection" == "1" ]; then
        read -p "Enter the shutdown time in minutes:seconds (e.g., 40:20): " minute_second

        IFS=':' read -r minute second <<< "$minute_second"
        total_seconds=$((minute * 60 + second))

        current_time=$(date +%s)
        shutdown_time=$((current_time + total_seconds))
        shutdown_time_formatted=$(date -d @$shutdown_time +%H:%M:%S)

        echo
        echo "The system will shut down at $shutdown_time_formatted."
        shutdown -h +$((total_seconds / 60))
        break

    elif [ "$selection" == "2" ]; then
        echo
        shutdown -c
        echo "Shutdown has been canceled."
        break

    else
        echo
        echo "Invalid option! Please select 1 or 2."
        sleep 3
    fi
done
