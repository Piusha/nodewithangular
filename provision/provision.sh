echo -e "\n--- Updating packages list ---\n"
sudo apt-get -qq update

sudo apt-get install -y make g++ git curl vim libcairo2-dev libav-tools nfs-common portmap

echo -e "\n--- Installing MongoDB...... ---\n"
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo "deb http://repo.mongodb.org/apt/ubuntu "$(lsb_release -sc)"/mongodb-org/3.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.0.list

sudo apt-get update

sudo apt-get install -y mongodb-org
# Pin to the exact version above, so it's not auto upgraded by apt-get
sudo apt-get install -y mongodb-org=3.0.4 mongodb-org-server=3.0.4 mongodb-org-shell=3.0.4 mongodb-org-mongos=3.0.4 mongodb-org-tools=3.0.4

sudo apt-get update


echo -e "\n--- Installing NodeJS...... ---\n"
curl -sL https://deb.nodesource.com/setup | sudo bash -
sudo apt-get install -y nodejs
sudo apt-get install -y build-essential

echo -e "\n--- NodeJS and Mongo installed ....---\n"

echo -e "\n--- Installing nginx application server....---\n"
sudo apt-get update
sudo apt-get install -y nginx

echo -e "\n Coppy server nginx server configurations...... ---\n "
sudo cp /web/server_config/nginx.conf /etc/nginx/

echo -e "\n restarting nginx ...... ---\n "
sudo service nginx restart


echo -e "\n Installing Initial node modules ...... ---\n "


echo -e "\n Installing Mean JS ...... ---\n "
sudo npm install -g express



