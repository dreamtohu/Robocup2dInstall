#!/bin/bash
DIR=$(dirname $0)
cd $DIR




sudo apt-get update
sudo apt-get install -y  bison libbison-dev

sudo apt-get install -y build-essential libboost-all-dev flex 

sudo apt-get install -y libqt4-dev libxpm-dev libaudio-dev libxt-dev libpng-dev libglib2.0-dev libfreetype6-dev libxrender-dev libxext-dev libfontconfig-dev libxi-dev
sudo apt-get install -y nautilus-open-terminal

#安装 server
if [ -d rcssserver-15.4.0 ]
then
	rm -r rcssserver-15.4.0
fi
tar -zxvf rcssserver-15.4.0.tar.gz
cd rcssserver-15.4.0
#./configure
make 
sudo make install
cd .. 
#安装monitor
if [ -d rcssmonitor-15.2.0 ]
then
	rm  -r rcssmonitor-15.2.0
fi
tar -zxvf  rcssmonitor-15.2.0.tar.gz
cd rcssmonitor-15.2.0
#./configure
make
sudo make install
cd ..


#安装 logplayer 
if [ -d rcsslogplayer-15.2.0 ]
then 
	rm -r rcsslogplayer-15.2.0
fi
tar -zxvf rcsslogplayer-15.2.0.tar.gz
cd rcsslogplayer-15.2.0
#./configure
make
sudo make install
cd ..
#安装rcsclib 
if [ -d librcsc-4.1.0 ]  
then
sudo apt-get install nautilus-open-terminal 
	rm  -r  librcsc-4.1.0
fi
tar -zxvf librcsc-4.1.0.tar.gz
cd librcsc-4.1.0
#./configure
make
sudo make install
cd ..



#安装 soccerwindow2
if [ -d soccerwindow2-5.1.0 ]
then 
	rm -r soccerwindow2-5.1.0
fi
tar -zxvf soccerwindow2-5.1.0.tar.gz
cd soccerwindow2-5.1.0

make
sudo make install
cd ..
#安装 fedit2
if [ -d fedit2-0.0.0 ]
then
	rm -r fedit2-0.0.0
fi
tar -zxvf fedit2-0.0.0.tar.gz
cd fedit2-0.0.0

make
sudo make install
cd ..
#将lib添加到搜索路径

sudo echo "include /etc/ld.so.conf.d/*.conf
/usr/lib
/usr/local/lib
">ld.so.conf
sudo rm   /etc/ld.so.conf
sudo mv  ld.so.conf  /etc

sudo ldconfig


