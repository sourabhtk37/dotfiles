#!/bin/zsh
# dot_updater.sh
# runs every 15 days and copies dot-files and push them to git.

var="cp /home/sourabh/."

# change directory to a valid git folder
chdir /home/sourabh/work/dotfiles

# copies dotfiles into the current directory
for dot in "tmux.conf" "gitconfig" "zshrc" "vimrc" "bashrc" "i3_config"
do
	eval $var$dot /home/sourabh/work/dotfiles 
done

# get to the dotfiles folder to reach a git 
# directory else git commands wont work
cd /home/sourabh/work/dotfiles

# retrieves the current day,year for commit message
commit_message="date | cut -d ' ' -f 2,3,6"
echo "dot files updated $(eval $commit_message)" >> template.txt

# commits the changes
git add .
git commit --file template.txt

# removal necessary else the commit_message won't 
# be updated with new message as bash appends to
# the end of the file
rm template.txt

# adds ssh passphrase to ssh-agent
ssh-add ~/.ssh/github_main

# via ssh so won't ask for authentication
git push origin master
