#!/bin/bash

set -ex

echo "arch" > build.sh

# Update .bashrc
echo -e "alias xcodebuild=\"arch -x86_64 /bin/bash /Users/vagrant/git/build.sh\"\n" >> ~/.bashrc
source ~/.bashrc &>/dev/null

# Update .bash_profile
#echo -e "shopt -s expand_aliases\n" >> ~/.bash_profile
#echo -e ". ~/.bashrc\n" >> ~/.bash_profile
#source ~/.bash_profile &>/dev/null

# Update .zshrc
echo -e "shopt -s expand_aliases\n" >> ~/.zshrc
echo -e ". ~/.bashrc\n" >> ~/.zshrc
source ~/.zshrc &>/dev/null

echo "Running arch"
arch

echo ""

echo "Running Swizzled xcodebuild"
xcodebuild
