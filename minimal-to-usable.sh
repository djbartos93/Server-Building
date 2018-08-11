#!/usr/bin/
echo -e "\e[95m--> Updating CentOS System"
yum -y update
echo -e "\e[95m***Installing base packages****"
yum install net-tools nano wget -y
echo -e "\e[42m***Installing Telegraf****"
wget https://dl.influxdata.com/telegraf/releases/telegraf-1.7.3-1.x86_64.rpm
sudo yum localinstall telegraf-1.7.3-1.x86_64.rpm

echo "###CONFIGURE TELEGRAF###"
mv telegraf-base.conf /etc/telegraf/telegraf.conf
echo "##**NOTE**##"
echo -e "\e[33mYou will need to change the hostname, username and password of telegraf"
echo -e "\e[95mInstalling ZSH"
sudo yum -y install zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
echo -e "\e[32mDone!"
