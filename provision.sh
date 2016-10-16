sudo apt-get update;
apt-get -f install
DEFAULTPASS="vagrant"
sudo debconf-set-selections <<EOF
mysql-server	mysql-server/root_password password $DEFAULTPASS
mysql-server	mysql-server/root_password_again password $DEFAULTPASS
dbconfig-common	dbconfig-common/mysql/app-pass password $DEFAULTPASS
dbconfig-common	dbconfig-common/mysql/admin-pass password $DEFAULTPASS
dbconfig-common	dbconfig-common/password-confirm password $DEFAULTPASS
dbconfig-common	dbconfig-common/app-password-confirm password $DEFAULTPASS
phpmyadmin		phpmyadmin/reconfigure-webserver multiselect apache2
phpmyadmin		phpmyadmin/dbconfig-install boolean true
phpmyadmin      phpmyadmin/app-password-confirm password $DEFAULTPASS 
phpmyadmin      phpmyadmin/mysql/admin-pass     password $DEFAULTPASS
phpmyadmin      phpmyadmin/password-confirm     password $DEFAULTPASS
phpmyadmin      phpmyadmin/setup-password       password $DEFAULTPASS
phpmyadmin      phpmyadmin/mysql/app-pass       password $DEFAULTPASS
EOF
sudo apt-get install vim curl python-software-properties git-core --assume-yes --force-yes
sudo add-apt-repository ppa:ondrej/php5-5.6
sudo apt-get update
sudo apt-get install mysql-server-5.5 mysql-client phpmyadmin --assume-yes --force-yes
sudo apt-get install php5 apache2 libapache2-mod-php5 php5-curl php5-gd php5-mcrypt unzip openssl php5-mysql --assume-yes --force-yes
sudo a2enmod rewrite
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
sudo apt-get install redis-server --assume-yes
sudo apt-get install php5-redis
sudo apt-get install php5-imap
sudo apt-get install php5-intl
sudo php5enmod imap
sudo service apache2 restart
sudo php composer.phar require --dev behat/behat
sudo vendor/bin/behat --init
echo "[OK] --- Ambiente de desenvolvimento concluido ---"
echo "[OK] --- Bom codigo, que Deus esteja com você ---"
echo "[OK] --- Criado por Stéfano Araujo Pereira ---"





















