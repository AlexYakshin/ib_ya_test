#!/bin/bash

SCAN_DIR="/home"
LOG_FILE="/var/log/clamav/manual_clamscan.log"
/usr/bin/clamscan -i -r $SCAN_DIR >> $LOG_FILE 
