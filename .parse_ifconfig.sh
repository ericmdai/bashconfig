#!/usr/bin/env bash
while IFS='$\n' read -r line; do
    [[ $line =~ .*flags.* ]] && INTERFACE=$(echo $line | awk '{print $1}')
    [[ $line =~ "inet " ]] && IP=$(echo $line | awk '{print $2}') && echo -e "$INTERFACE\t$IP"
done < <(ifconfig)
exit 0
