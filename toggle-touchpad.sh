#!/bin/bash
condition="$(gsettings get  org.gnome.desktop.peripherals.touchpad send-events)"

if [ "$condition" = "'disabled'" ]; then
     gsettings set org.gnome.desktop.peripherals.touchpad send-events enabled
elif [ "$condition" = "'enabled'" ]; then
    gsettings set org.gnome.desktop.peripherals.touchpad send-events disabled-on-external-mouse
elif [ "$condition" = "'disabled-on-external-mouse'" ]; then
    gsettings set org.gnome.desktop.peripherals.touchpad send-events disabled
fi

