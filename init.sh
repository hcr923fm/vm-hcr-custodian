curl -sL https://deb.nodesource.com/setup_11.x | sudo -E bash -
sudo apt-get update
sudo apt-get install -y nodejs build-essential git

cd /home/vagrant
git clone http://github.com/hcr923fm/custodian
cd custodian

sudo npm install -g @angular/cli
npm install
echo "AUDIO_FILE_DIRECTORY='/var/LoggedAudio'" > .env

ng build && npm start