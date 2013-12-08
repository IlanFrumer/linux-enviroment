# First we need a quake-like terminal...!

phase="1) upading & preparing repositories"

printing(){printf "\033c";echo "Phase $phase";echo "\n- $1\n";}

printing "Adding Repositories.."

add-apt-repository -y ppa:webupd8team/sublime-text-3
add-apt-repository -y ppa:chris-lea/node.js
add-apt-repository -y ppa:olivier-berten/misc

printing "Updating packages list"


phase="2) upgrading all packages"

apt-get update

printing "Upgrading packages"

apt-get -y upgrade

phase="3) apt-get custom packages"

for package in guake git zsh nodejs ruby
do
  printing "Installing $package..."
  apt-get -y install $package
done

phase="3) apt-get php extensions"

for package in php5-json php5-cli php5-xdebug php5-gd php5-mcrypt php5-curl php-pear
do
  printing "Installing $package"
  apt-get -y install $package
done

phase="3) apt-get more tools"

for package in sublime-text-installer curl filezilla mysql-workbench phpmyadmin
do
  printing "Installing $package"
  apt-get -y install $package
done

phase="4) Shell & tools"

title "Installing oh-my-zsh"
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
chsh -s $(which zsh) $USER

printing "Installing z script"
git clone https://github.com/rupa/z.git ~/z

# tasksel install lamp-server

printing "installing phpunit"
wget https://phar.phpunit.de/phpunit.phar
chmod +x phpunit.phar
mv phpunit.phar /usr/local/bin/phpunit

printing "installing composer"
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer

printing "installing phpcs"
pear install PHP_CodeSniffer


phase="5) npm (node.js) packages"
for package in bower grunt-cli coffee-script
do
  printing "Installing $package"
  npm install -g $package
done

phase="6) gem (ruby) packages"
for package in bundler sass compass slim
do
  printing "Installing $package"
  gem install $package
done


phase="7) last upgrades and cleanup"

printing "Installing $package"

printing "Upgrade all"
apt-get -y dist-upgrade

printing "Remove not needed packages"
apt-get -y autoremove

printing "Clean files"
apt-get -y autoclean

FILES_FOLDER="https://raw.github.com/IlanFrumer/linux-enviroment/master/files"


phase="8) cloning configuration"

## clone files
printing "cloning .zshrc"
curl -L "$FILES_FOLDER/.zshrc" > ~/.zshrc

printing "cloning Preferences.sublime-settings"
curl -L "$FILES_FOLDER/Preferences.sublime-settings" > ~/.config/sublime-text-3/Packages/User/Preferences.sublime-settings

printing "cloning Package Control.sublime-settings"
curl -L "$FILES_FOLDER/Package%20Control.sublime-settings" > ~/.config/sublime-text-3/Packages/User/Package\ Control.sublime-settings

printf "\033c"
echo "Everything done!"
