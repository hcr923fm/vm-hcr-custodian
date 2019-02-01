curl -sL https://deb.nodesource.com/setup_11.x | sudo -E bash -
sudo apt-get update
sudo apt-get install -y nodejs npm build-essential git

git clone https://github.com/hc923fm/custodian
cd custodian

npm install
echo "/var/LoggedAudio" > .env

npm build && npm start