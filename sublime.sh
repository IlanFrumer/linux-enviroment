sudo add-apt-repository ppa:webupd8team/sublime-text-3
sudo apt-get update
sudo apt-get install -y sublime-text-3
wget -xNP ~/.config/sublime-text-3/Installed\ Packages/ http://sublime.wbond.net/Package%20Control.sublime-package
curl -L "https://raw.github.com/IlanFrumer/linux-enviroment/master/files/Preferences.sublime-settings" > ~/.config/sublime-text-3/Packages/User/Preferences.sublime-settings
curl -L "https://raw.github.com/IlanFrumer/linux-enviroment/master/files/Package%20Control.sublime-settings" > ~/.config/sublime-text-3/Packages/User/Package\ Control.sublime-settings