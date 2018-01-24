sudo apt-get install -y git
sudo apt-get install -y bluez bluez-cups bluez-obexd gnome-bluetooth indicator-bluetooth libbluetooth3:amd64 libgnome-bluetooth13:amd64 pulseaudio-module-bluetooth 
sudo curl -L https://github.com/docker/compose/releases/download/1.18.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

sudo git clone https://github.com/okoeth/edge-docker.git

