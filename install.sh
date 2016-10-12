#!/bin/bash

sudo dpkg --add-architecture i386 
sudo apt-get update -y
sudo apt-get install -y libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1
sudo rm -rf /var/lib/apt/lists/*
sudo apt-get autoremove -y 
sudo apt-get clean
cd /opt
wget -q ${ANDROID_SDK_URL}
tar -xzf ${ANDROID_SDK_FILENAME}
rm ${ANDROID_SDK_FILENAME}
echo y | android update sdk --no-ui -a --filter tools,platform-tools,${ANDROID_API_LEVELS},build-tools-${ANDROID_BUILD_TOOLS_VERSION},extra-android-m2repository,extra-android-support