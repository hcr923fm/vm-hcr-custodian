curl -sL https://deb.nodesource.com/setup_11.x | sudo -E bash -
sudo apt-get update
sudo apt-get install -y nodejs build-essential git

git clone http://github.com/hcr923fm/custodian
cd custodian

sudo npm install -g @angular/cli
sudo chmod 777 -R ./
npm install
echo "AUDIO_FILE_DIRECTORY='/var/LoggedAudio'" > .env
echo "CUSTODIAN_HOST='192.168.0.130'" >> .env

ng run-script build && npm start