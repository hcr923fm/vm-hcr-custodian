curl -sL https://deb.nodesource.com/setup_11.x | sudo -E bash -
sudo apt-get update
sudo apt-get install -y nodejs build-essential git ntp

# Set time and time zone
echo "server 192.168.0.254 prefer" >> /etc/ntp.conf
sudo /etc/init.d/ntp restart
sudo ln -fs /usr/share/zoneinfo/Europe/London /etc/localtime
sudo dpkg-reconfigure -f noninteractive tzdata

git clone http://github.com/hcr923fm/custodian
cd custodian

sudo npm install -g @angular/cli
sudo chmod 777 -R ./
npm install
echo "AUDIO_FILE_DIRECTORY='/var/LoggedAudio'" > .env
echo "CUSTODIAN_HOST='192.168.0.130'" >> .env

npm run-script build && npm start