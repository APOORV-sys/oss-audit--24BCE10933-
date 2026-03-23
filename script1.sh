#!/bin/bash
# Script 1: System Identity Report
# Author: [Your Name] | Course: Open Source Software

# --- Variables ---
STUDENT_NAME="[Your Name]"        # Fill in your name
SOFTWARE_CHOICE="Linux"           # Fill in your chosen software

# --- System info ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)

# New variables to meet the assignment requirements
DISTRO=$(grep PRETTY_NAME /etc/os-release | cut -d '"' -f 2)
HOME_DIR=$HOME
CURRENT_DATE=$(date +"%A, %B %d, %Y at %T")
LICENSE="GNU General Public License (GPL) version 2"

# --- Display ---
echo "---------------------------------------------------"
echo "  Open Source Audit - $Apoorv "
echo "---------------------------------------------------"
echo "Distro       : $DISTRO"
echo "Kernel       : $KERNEL"
echo "User         : $USER_NAME"
echo "Home Direct. : $HOME_DIR"
echo "Uptime       : $UPTIME"
echo "Date & Time  : $CURRENT_DATE"
echo "---------------------------------------------------"
echo "License Info : The Linux OS kernel is covered by the $LICENSE."
echo "---------------------------------------------------"
