#!/bin/zsh
# dot_updater.sh
# runs every 15 days and copies dot-files and push them to git.

var="cp /home/sourabhtk37/."

# change directory to a valid git folder
chdir /home/sourabhtk37/work/dotfiles

# copies dotfiles into the current directory
for dot in "gitconfig" "vimrc" "bashrc" "config/fish/config.fish" "config/i3/config"
do
	eval $var$dot /home/sourabhtk37/work/dotfiles 
done

# get to the dotfiles folder to reach a git 
# directory else git commands wont work
cd /home/sourabhtk37/work/dotfiles

# retrieves the current day,year for commit message
commit_message="date | cut -d ' ' -f 2,3,6"
echo "dot files updated $(eval $commit_message)" > template.txt

# adds ssh passphrase to ssh-agent
ssh-add ~/.ssh/github_main

# commits the changes
git add .
git commit --file template.txt

# via ssh so won't ask for authentication
git push origin master
