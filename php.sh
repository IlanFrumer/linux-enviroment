sudo apt-get install -y php5-json php5-cli php5-xdebug php5-gd php5-mcrypt php5-curl php-pear

# phpunit
wget https://phar.phpunit.de/phpunit.phar
sudo chmod +x phpunit.phar
sudo mv phpunit.phar /usr/local/bin/phpunit

# composer
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer

# php code sniffer
sudo pear install PHP_CodeSniffer