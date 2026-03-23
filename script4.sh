#!/bin/bash
# Script 4: Log File Analyzer
# Usage: ./log_analyzer.sh /path/to/logfile [keyword]

LOGFILE=$1
KEYWORD=${2:-"error"}   # Default keyword is 'error'
COUNT=0

while true; do
    if [ -s "$LOGFILE" ]; then
        break # Exit the loop, the file is valid and not empty
    else
        echo "Warning: File '$LOGFILE' not found or is empty."
        read -p "Please enter a valid log file path: " LOGFILE
    fi
done
 
#TODO 1:
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo ""
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"
echo "----------------------------------------"

# TODO 2:
if [ $COUNT -gt 0 ]; then
    echo "Last 5 occurrences of '$KEYWORD':"
    # grep -i makes it case-insensitive, tail -n 5 grabs the bottom 5 lines
    grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
fi
