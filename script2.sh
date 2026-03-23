#!/bin/bash	
# Script 2: FOSS Package Inspector


PACKAGE=${1:-"vlc"}
echo "--- Inspecting Package: $PACKAGE ---"
if rpm -q "$PACKAGE" &>/dev/null; then
    echo "$PACKAGE is installed."
    rpm -qi "$PACKAGE" | grep -E 'Version|License|Summary'
else
    echo "$PACKAGE is NOT installed."
fi

echo "--- Philosophy Note ---"

# Case statement to print a short description based on the name
case "$PACKAGE" in
    httpd)
        echo "Apache: The web server that built the open internet." ;;
    mysql)
        echo "MySQL: Open source at the heart of millions of apps." ;;
    vlc)
        echo "VLC: The Swiss Army knife of media players." ;;
    firefox)
        echo "Firefox: Putting people before profit on the web." ;;
    git)
        echo "Git: The standard for modern version control." ;;
    *)
        echo "Description not available for this package." ;;
esac
