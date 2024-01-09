sudo apt install openjdk-8-jdk
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
export PATH=$JAVA_HOME/bin:$PATH
echo $JAVA_HOME
touch /root/.android/repositories.cfg

# $JAVA_HOME_8_X64/bin/java -version
# export JAVA_HOME=$JAVA_HOME_8_X64
java -version
sudo ls /usr/lib/jvm

echo $ANDROID_SDK_ROOT
sudo ls $ANDROID_SDK_ROOT

sudo ls $ANDROID_SDK_ROOT/tools
sudo yes | $ANDROID_SDK_ROOT/tools/bin/sdkmanager --licenses
# sudo $ANDROID_SDK_ROOT/tools/bin/sdkmanager --update
# sudo $ANDROID_SDK_ROOT/tools/bin/sdkmanager "extras;android;m2repository" "extras;google;m2repository"

sudo $ANDROID_SDK_ROOT/tools/bin/sdkmanager --list | grep system-images
sudo $ANDROID_SDK_ROOT/tools/bin/avdmanager create avd -n testavd -k "system-images;android-33;google_apis_playstore;x86_64" -f
sudo $ANDROID_SDK_ROOT/tools/emulator -list-avds

# /usr/local/lib/android/sdk/tools/emulator -avd testavd -no-window -cores 6 &
# adb devices


# sudo /usr/local/lib/android/sdk/tools/bin/sdkmanager "platform-tools" "platforms;android-33"  "build-tools;30.0.3" "emulator"
# sudo /usr/local/lib/android/sdk/tools/bin/sdkmanager "system-images;android-33;google_apis;x86_64"
