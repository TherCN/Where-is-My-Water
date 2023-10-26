sudo mkdir /usr/local/lib/android/sdk/ndk/
sudo cd /usr/local/lib/android/sdk/ndk/
sudo curl -O https://dl.google.com/android/repository/android-ndk-r23-linux.zip
sudo unzip android-ndk-r23-linux.zip
sudo mv android-ndk-r23 23.0.7599858
cd $OLDPWD
sudo cp nativelib/*.so /usr/local/lib/android/sdk/ndk/23.0.7599858/build/core/