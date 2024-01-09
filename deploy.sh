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

la -la $ANDROID_HOME
la -la $ANDROID_HOME/tools
la -la $ANDROID_HOME/tools/bin