#!/bin/sh

#Fix MagicMouse Scroll for Linux

I_MOUSE_IDENTITY='System Administrator’s Mouse'
I_MOUSE_ID=$(xinput --list | grep ${I_MOUSE_IDENTITY} | awk '{print $6}' | tr -dc '0-9');
I_MOUSE_PARAM=$(xinput --list-props ${I_MOUSE_ID} | grep "Scroll Method Enabled (" | awk '{print $5}' | tr -dc '0-9');
xinput --set-prop ${I_MOUSE_ID} ${I_MOUSE_PARAM} 0 0 1
