#!/bin/bash
tar -zxvf  rcssserver-15.4.0.tar.gz
cd rcssserver-15.4.0
./configure  CXXFLAGS='-std=c++03'
make
sudo make install
cd ..

tar -zxvf rcssmonitor-15.2.1.tar.gz 
cd rcssmonitor-15.2.1
./configure  CXXFLAGS='-std=c++03'
make
sudo make install 
cd ..

tar  -zxvf rcsslogplayer-15.2.1.tar.gz
cd rcsslogplayer-15.2.1
./configure  CXXFLAGS='-std=c++03'
make
sudo make install
cd ..

tar  -zxvf librcsc-4.1.0.tar.gz 
cd librcsc-4.1.0 
./configure CXXFLAGS='-std=c++03'
make
sudo make install
cd ..


tar -zxvf soccerwindow2-5.1.1.tar.gz
cd soccerwindow2-5.1.1
./configure CXXFLAGS='-std=c++03'
make
sudo  make install
cd ..

tar -zxvf  fedit2-0.0.1.tar.gz 
cd fedit2-0.0.1 
./configure CXXFLAGS='-std=c++03'
make
sudo make install
