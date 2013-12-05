# First we need a quake-like terminal...!
apt-get -y install guake

# then we need zsh...
apt-get -y install zsh
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
chsh -s $(which zsh) $USER
git clone https://github.com/rupa/z.git ~/z

## - Preferences.sublime-settings
add-apt-repository -y ppa:webupd8team/sublime-text-3
add-apt-repository -y ppa:chris-lea/node.js
add-apt-repository -y ppa:olivier-berten/misc
apt-get update
apt-get upgrade

## Programming languages

apt-get -y install nodejs ruby
apt-get -y install php5-json php5-cli php5-xdebug php5-gd php5-fpm php5-mcrypt php5-curl

## Servers

apt-get -y install tasksel nginx
tasksel install lamp-server

## Tools

apt-get sublime-text-installer git curl filezilla mysql-workbench phpmyadmin


## phpunit
wget https://phar.phpunit.de/phpunit.phar
chmod +x phpunit.phar
mv phpunit.phar /usr/local/bin/phpunit

## composer
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer

## pear Packages
apt-get -y install php-pear
pear install PHP_CodeSniffer

# NPM Packages
npm install -g bower grunt-cli coffee-script

# GEM Packages
gem install bundler sass compass slim

# cleanp

apt-get dist-upgrade
apt-get autoclean
apt-get autoremove

FILES_FOLDER="https://raw.github.com/IlanFrumer/linux-enviroment/master/files"

## clone files
curl "$FILES_FOLDER/.zshrc" > ~/.zshrc
curl "$FILES_FOLDER/Preferences.sublime-settings" > ~/.config/sublime-text-3/Packages/User/Preferences.sublime-settings
curl "$FILES_FOLDER/Package Control.sublime-settings" > ~/.config/sublime-text-3/Packages/User/Package\ Control.sublime-settings