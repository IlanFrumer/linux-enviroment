#!/bin/bash
echo -en "\e[32;1m"
echo -e "----------------------------------------"
echo -en "\e[34m"
echo -e "          Git configuration             "
echo -en "\e[32m"
echo -e "----------------------------------------"
echo -en "\e[0;0m"

echo -n "Enter your user name and press [ENTER]: "
read name

echo -n "Enter your email and press [ENTER]: "
read email

git config --global user.name "$name"
git config --global user.email "$email"
git config --global core.editor "subl -w"
git config --global color.ui true
git config --global push.default simple

echo ""
echo -e "Edit your .gitconfig file manually: \e[1;4msubl ~/.gitconfig"
echo ""
