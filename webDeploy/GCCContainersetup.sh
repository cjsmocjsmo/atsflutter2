sudo apt-get update;
sudo apt-get -y dist-upgrade;
sudo apt-get -y install git snapd certbot apache2;
sudo apt-get -y auto-clean;
sudo apt-get -y auto-remove;

#place files in /var/www/html

#get cert with: certbot --apache && certbot renew --dry-run

# or

# if there is already a cert use: certbot renew