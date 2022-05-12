#! /bin/bash

url="$1"

gsettings set org.gnome.desktop.background picture-uri "file://$1"

