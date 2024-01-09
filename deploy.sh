# cd /Users/runner/work

sudo apt-get update
sudo apt install openjdk-8-jdk

wget https://dl.google.com/android/repository/sdk-tools-linux-4333796.zip
unzip sdk-tools-linux-4333796.zip -d Android

ls -la Android

echo $PWD

export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
export PATH=$JAVA_HOME/bin:$PATH
export ANDROID_HOME=$HOME/Android
export PATH=$PATH:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools
#export ANDROID_HOME=$PWD/Android
# export PATH=$PATH:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools

# ls -la $ANDROID_HOME
# ls -la $ANDROID_HOME/tools
# ls -la $ANDROID_HOME/tools/bin

echo $ANDROID_SDK_ROOT
sudo ls $ANDROID_SDK_ROOT

sudo ls /usr/local/lib/android/sdk/tools

/usr/local/lib/android/sdk/tools/bin/sdkmanager "platform-tools" "platforms;android-33"  "build-tools;30.0.3" "emulator"
/usr/local/lib/android/sdk/tools/bin/sdkmanager "system-images;android-33;google_apis;x86_64"
/usr/local/lib/android/sdk/tools/bin/avdmanager create avd -n testavd -k "system-images;android-33;google_apis;x86_64"
/usr/local/lib/android/sdk/tools/emulator -avd testavd -no-window -cores 6 &
avd devices