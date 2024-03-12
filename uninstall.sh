#!/bin/bash

#This script has to have root privileges (sudo).

cd /Applications
rm -r RAVE.app

cd /Library/Audio/Plug-Ins
rm -r Components/RAVE.component
rm -r VST3/RAVE.vst3
