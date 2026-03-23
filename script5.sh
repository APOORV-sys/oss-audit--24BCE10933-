#!/bin/bash
# Script 5: Open Source Manifesto Generator

echo "Answer three questions to generate your manifesto."
echo ""

read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# Demonstrating the alias concept via comment:
# An alias is a custom terminal shortcut. For example, you could add the 
# following line to your ~/.bashrc file to quickly read your manifesto anytime:
# alias mymanifesto='cat manifesto_$(whoami).txt'

echo "======================================" > "$OUTPUT"
echo "      MY OPEN SOURCE MANIFESTO        " >> "$OUTPUT"
echo "      Generated on: $DATE             " >> "$OUTPUT"
echo "======================================" >> "$OUTPUT"
echo "" >> "$OUTPUT"

echo "I believe that technology should empower everyone. Every single day, tools like $TOOL help me create and explore without boundaries." >> "$OUTPUT"
echo "To me, the true essence of the open-source movement is $FREEDOM." >> "$OUTPUT"
echo "In the spirit of global collaboration, I pledge to one day build $BUILD and share it freely with the world, so that others may learn, adapt, and improve upon my work." >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "- $(whoami)" >> "$OUTPUT"

echo ""
echo "Manifesto saved to $OUTPUT"
echo "Here is what it looks like:"
echo ""
cat "$OUTPUT"
