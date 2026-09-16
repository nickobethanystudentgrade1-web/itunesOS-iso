#!/bin/sh

echo "================================"

echo "        iTunes OS Terminal"

echo "================================"

echo "Type 'help' for commands."

echo

while true; do

    printf "itunes-os$ "

    read command args

    case "$command" in

        help)

            echo "Available commands:"

            echo "  help       Show commands"

            echo "  music      Open iTunes Music"

            echo "  itube      Open iTube"

            echo "  settings   Open Settings"

            echo "  store      Open iTunes OS Store"

            echo "  account    Open iTunes Account"

            echo "  clear      Clear screen"

            echo "  exit       Close Terminal"

            ;;

        music)

            ./itunes-music.sh

            ;;

        itube)

            ./itube.sh

            ;;

        settings)

            echo "Opening Settings..."

            ;;

        store)

            echo "Opening iTunes OS Store..."

            ;;

        account)

            echo "Opening iTunes Account..."

            ;;

        clear)

            clear

            ;;

        exit)

            exit 0

            ;;

        "")

            ;;

        *)

            echo "Command not found: $command"

            ;;

    esac

done