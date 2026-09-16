#!/bin/sh

APP="iTube"

echo "================================"

echo "             iTube"

echo "================================"

echo

echo "1. Home"

echo "2. Search"

echo "3. Subscriptions"

echo "4. Library"

echo "5. History"

echo "6. Quit"

echo

while true; do

    printf "iTube> "

    read choice

    case "$choice" in

        1) echo "Opening iTube Home..." ;;

        2)

            printf "Search videos: "

            read query

            echo "Searching: $query"

            ;;

        3) echo "Opening Subscriptions..." ;;

        4) echo "Opening Library..." ;;

        5) echo "Opening History..." ;;

        6) exit 0 ;;

        *) echo "Unknown option." ;;

    esac

done