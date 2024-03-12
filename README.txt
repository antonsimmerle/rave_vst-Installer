rave_vst-Installer

Anton Simmerle, Jakob Simmerle
04/03/2024

The rave_vst-Installer repository is a installation script for the "rave_vst" (IRCAM) plug-in.
"rave_vst" is not in our ownership.

Resources:

* <https://github.com/acids-ircam/rave_vst>
* <https://github.com/juce-framework/JUCE>

Requirements:

* A 64-bit Intel CPU or Apple Silicon CPU
* macOS Monterey (12) or higher
* A stable internet connection
* At least 5GB available disk space
* The Bourne-again shell for installation (i.e. bash)
* Xcode full installation

Usage:

* Paste following command into your Terminal to install.

$ sudo /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/antonsimmerle/rave_vst-Installer/master/install.sh)"

* Paste following command into your Terminal to uninstall.

$ sudo /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/antonsimmerle/rave_vst-Installer/master/uninstall.sh)"

Following packages are going to be installed or updated (if necessary):

* Xcode Command Line Tools
* Homebrew
* PyTorch
* CMake

Following is going to be created:

* /Library/Audio/Plug-Ins/Components/RAVE.component
* /Library/Audio/Plug-Ins/VST3/RAVE.vst3
* /Applications/RAVE.app