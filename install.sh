#!/bin/bash

#This script has to have root privileges (sudo).

#Install dependencies

cd

HB=""

ARCH=$(uname -m)
[[ "$ARCH" == "arm64" ]] && HB="/opt/homebrew/bin/brew" || HB="/usr/local/Homebrew/bin/brew"

sudo -u $(logname) NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

(echo; echo "eval \"\$($HB shellenv)\"") >> ~/.zprofile
eval "$($HB shellenv)"

sudo -u $(logname) brew update
sudo -u $(logname) brew install cmake pytorch
sudo -u $(logname) brew upgrade cmake pytorch

#Compilation

cd

git clone https://github.com/acids-ircam/rave_vst.git
git clone https://github.com/juce-framework/JUCE.git

mv JUCE juce
mv juce rave_vst

cd rave_vst
mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
cmake --build . --config Release -j 4

#Clean-Up

cd

cd rave_vst/build/rave-vst_artefacts/Release

mv -f Standalone/RAVE.app /Applications
mkdir -p /Library/Audio/Plug-Ins/VST3
mv -f VST3/RAVE.vst3 /Library/Audio/Plug-Ins/VST3
mv -f AU/RAVE.component /Library/Audio/Plug-Ins/Components

cd

rm -r rave_vst
