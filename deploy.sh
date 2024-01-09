sudo apt install openjdk-8-jdk
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
export PATH=$JAVA_HOME/bin:$PATH
echo $JAVA_HOME
java -version
yes | $ANDROID_SDK_ROOT/tools/bin/sdkmanager --licenses
$ANDROID_SDK_ROOT/tools/bin/sdkmanager --list | grep system-images
java -version
$ANDROID_SDK_ROOT/tools/bin/sdkmanager "system-images;android-33;google_apis;x86_64"
echo "no" | $ANDROID_SDK_ROOT/tools/bin/avdmanager create avd -n testavd -k "system-images;android-33;google_apis;x86_64" -f
$ANDROID_SDK_ROOT/tools/emulator -list-avds
D_NAME=$(id -un)
echo $D_NAME
G_NAME=$(id -gn)
echo $G_NAME
sudo groupadd -r kvm
sudo gpasswd -a $USER kvm
# cat /lib/udev/rules.d/50-udev-default.rules
sudo chmod 0660 /dev/kvm
sudo chown root:kvm /dev/kvm
pip3 install opencv-python-headless
# sudo apt-get install qt5-default
# newgrp kvm 
# kvm-ok
$ANDROID_SDK_ROOT/tools/emulator -avd testavd -no-window -cores 6 &
sleep 15
sudo apt-get -y install gnome-screenshot
gnome-screenshot --file screenshot.png
# adb devices


# sudo /usr/local/lib/android/sdk/tools/bin/sdkmanager "platform-tools" "platforms;android-33"  "build-tools;30.0.3" "emulator"
# sudo /usr/local/lib/android/sdk/tools/bin/sdkmanager "system-images;android-33;google_apis;x86_64"
