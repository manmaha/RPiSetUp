sudo apt-get install netatalk
sudo apt-get install avahi-daemon
sudo update-rc.d avahi-daemon defaults
scp Manish@StudyMac.local:/Users/Owner/Documents/OneDrive/RaspberryPi/SetUp/afpd /etc/avahi/services/afpd.service
sudo /etc/init.d/avahi-daemon restart
sudo apt-get install tightvncserver
vncserver
cd /etc/init.d
scp Manish@StudyMac.local:/Users/Owner/Documents/OneDrive/RaspberryPi/SetUp/tightvncserver .

sudo chmod +x tightvncserver
sudo pkill Xtightvnc

sudo /etc/init.d/tightvncserver start
cd /etc/init.d
sudo update-rc.d tightvncserver defaults

scp Manish@StudyMac.local:/Users/Owner/Documents/OneDrive/RaspberryPi/SetUp/rfb /etc/avahi/services/rfb.service

sudo /etc/init.d/avahi-daemon restart
