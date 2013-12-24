curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
sudo chsh -s $(which zsh) $USER
git clone https://github.com/rupa/z.git ~/z
curl -L "https://raw.github.com/IlanFrumer/linux-enviroment/master/files/.zshrc" > ~/.zshrc