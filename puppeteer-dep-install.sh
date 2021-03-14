#!/bin/sh
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt-get update
sudo apt-get install -y libnss3
sudo apt install -y chromium-browser 
sudo apt-get install -y libxss1 
sudo apt-get install -y libasound2 
sudo apt-get install -y libatk-bridge2.0-0 
sudo apt-get install -y libgtk-3-0 
sudo apt-get install -y libcups2-dev
sudo apt-get install -y libxkbcommon-dev
sudo apt-get install -y libgbm-dev
