mkdir -p /usr/local/lib/android/sdk/ndk/
cd /usr/local/lib/android/sdk/ndk/
curl -O https://dl.google.com/android/repository/android-ndk-r23-linux.zip
unzip android-ndk-r23-linux.zip
mv android-ndk-r23 23.0.7599858
cd $OLDPWD
cp nativelib/*.so /usr/local/lib/android/sdk/ndk/23.0.7599858/build/core/
