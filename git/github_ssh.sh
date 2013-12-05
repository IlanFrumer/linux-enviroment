echo -n "Enter your username and press [ENTER]: "
read username

echo -n "Enter your email and press [ENTER]: "
read email

ssh-keygen -f ~/.ssh/id_rsa -t rsa -C "$email"

SSH=$(cat ~/.ssh/id_rsa.pub)

DATE="`date "+%d/%m/%Y %T %z"`"
MACHINE="`id -un`@`hostname -f`" 
DATA="{\"title\":\"$MACHINE $DATE\",\"key\":\"${SSH}\"}"

curl -X POST -d "$DATA" -u "$username" https://api.github.com/user/keys

git config --global user.name "$username"
git config --global user.email "$email"
git config --global core.editor subl 
git config --global color.ui true
git config --global push.default simple