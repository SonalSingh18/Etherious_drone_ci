#bin/#!/bin/bash
sed -i s/demo1/${TOKEN}/g telegram-send.conf
sed -i s/demo2/${CHATID}/g telegram-send.conf
mv telegram-send.conf $HOME/telegram-send.conf
cd $HOME

echo Cloning Sources
git clone --depth=1 https://github.com/ArrowOS-Devices/android_kernel_xiaomi_sm6250.git Kernel

echo Installing Telegram API
pip3 install telegram-send
mkdir $HOME/.config
mv $HOME/telegram-send.conf $HOME/.config/telegram-send.conf

echo Compiling Etherious Kernel
bash $HOME/Kernel/build.sh
