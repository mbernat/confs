#!/bin/sh

JID=$1
STATE=$2 #e.g. connected
OP1=$3 #e.g. notify_contact
OP2=$4 #e.g. clear_all_notifications

notify-send $JID $OP1 -i mail-unread
