sudo apt-get update

# apache2 + mysql + php
sudo tasksel install lamp-server
sudo a2enmod ssl
sudo a2enmod rewrite

# nginx + php5-fpm
sudo apt-get install nginx php5-fpm

# more php extensions
sudo apt-get install php5-mcrypt php5-curl php5-xdebug

# phpmyadmin
sudo apt-get install phpmyadmin

# composer
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer

# pear
sudo apt-get install php-pear

# phpdoc
sudo apt-get install graphviz php5-xsl
sudo pear install phpdoc/phpDocumentor

# phpunit
wget https://phar.phpunit.de/phpunit.phar
chmod +x phpunit.phar
sudo mv phpunit.phar /usr/local/bin/phpunit

# phpcs
pear install PHP_CodeSniffer

# permissions
sudo chown -R $USER:www-data /var/www
sudo chmod -R 0664 /var/www