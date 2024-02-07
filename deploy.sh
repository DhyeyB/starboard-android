echo "=========================================="
echo "======== Java Installation steps ======="
echo "=========================================="

sudo apt install openjdk-8-jdk
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
export PATH=$JAVA_HOME/bin:$PATH
echo $JAVA_HOME
java -version

echo "=========================================="
echo "======= Android sdk Installation ======="
echo "=========================================="

wget https://dl.google.com/android/repository/sdk-tools-linux-4333796.zip
ls
unzip sdk-tools-linux-4333796.zip -d android-sdk
ls android-sdk
ls android-sdk/tools
ls android-sdk/tools/bin
pwd
export ANDROID_HOME=/home/runner/work/starboard-android/starboard-android/android-sdk
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools

echo "=========================================="
echo "======== sdkmanager configuration ======="
echo "=========================================="

sdkmanager --list
yes | sdkmanager --licenses
sdkmanager "platform-tools" "platforms;android-33" "build-tools;30.0.3" "emulator" "system-images;android-33;google_apis;x86_64"
ls android-sdk

echo "=========================================="
echo "======== avdmanager configuration ======="
echo "=========================================="

echo "no" | avdmanager create avd -n testEmulator -k "system-images;android-33;google_apis;x86_64"
avdmanager list avd


sudo apt install cpu-checker bridge-utils libpulse0 qemu-kvm libvirt-daemon-system libvirt-clients virtinst
ls /dev/
kvm-ok
sudo kvm-ok
sudo adduser $USER libvirt
# sudo adduser -a $USER kvm
sudo groupadd -r kvm
sudo gpasswd -a $USER kvm
sudo chmod 0660 /dev/kvm
sudo chown $USER:kvm /dev/kvm
sudo kvm-ok
cat /lib/udev/rules.d/50-udev-default.rules
grep kvm /etc/group
getent group kvm
pip install opencv-python==4.7.0.72
pip install opencv-python-headless
sudo apt-get install qt5-default
sudo apt-get install -y libxcb-cursor0
sudo chmod -R 777 /home/runner/work/starboard-android/starboard-android/android-sdk
ls -la /home/runner/work/starboard-android/starboard-android/android-sdk/emulator/lib64/qt/plugins/platforms
sudo wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
ls /sys/devices/system/cpu/cpu0/

echo "=========================================="
echo "======== Emulator started ======="
echo "=========================================="

avdmanager list avd
/home/runner/work/starboard-android/starboard-android/android-sdk/tools/emulator -avd testEmulator -no-window -cores 6

# sudo ls $ANDROID_SDK_ROOT
# sudo ls $ANDROID_SDK_ROOT/platform-tools
# java -version
# yes | $ANDROID_SDK_ROOT/tools/bin/sdkmanager --licenses
# $ANDROID_SDK_ROOT/tools/bin/sdkmanager --list | grep system-images
# java -version
# $ANDROID_SDK_ROOT/tools/bin/sdkmanager "platform-tools" "platforms;android-33"  "build-tools;30.0.3" "emulator"
# $ANDROID_SDK_ROOT/tools/bin/sdkmanager "system-images;android-33;google_apis;x86_64"
# echo "no" | $ANDROID_SDK_ROOT/tools/bin/avdmanager create avd -n starboardavd -k "system-images;android-33;google_apis;x86_64" -f
# $ANDROID_SDK_ROOT/tools/emulator -list-avds
# D_NAME=$(id -un)
# echo $D_NAME
# G_NAME=$(id -gn)
# echo $G_NAME
# sudo groupadd -r kvm
# sudo gpasswd -a $USER kvm
# # cat /lib/udev/rules.d/50-udev-default.rules
# sudo chmod 0660 /dev/kvm
# sudo chown runner:kvm /dev/kvm
# pip install opencv-python==4.1.2.30 
# pip3 install opencv-python-headless
# pip install opencv-python-headless
# sudo apt install qtbase5-dev qtchooser qt5-qmake qtbase5-dev-tools libqt5gui5
# qmake -query
# export QT_QPA_PLATFORM_PLUGIN_PATH=/usr/lib/x86_64-linux-gnu/qt5/plugins
# # sudo apt-get install qt5-default -y
# # qmake --version
# # sudo apt-get install qt5-default
# # newgrp kvm 
# # kvm-ok
# echo "emulator starting"
# sudo ls -la $HOME/.android/avd
# $ANDROID_SDK_ROOT/tools/emulator -avd starboardavd -no-window
# echo "emulator started"
# $ANDROID_SDK_ROOT/platform-tools/adb devices
# sleep 15
# sudo apt-get -y install maim
# maim --format=png > screenshot.png

# sudo /usr/local/lib/android/sdk/tools/bin/sdkmanager "platform-tools" "platforms;android-33"  "build-tools;30.0.3" "emulator"
# sudo /usr/local/lib/android/sdk/tools/bin/sdkmanager "system-images;android-33;google_apis;x86_64"
