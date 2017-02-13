#!/bin/zsh
#dot_updater.sh
#runs every 15 days and copies dot-files and push them to git.

var="cp /home/sourabh/."

# copies dotfiles into the current directory
for dot in "tmux.conf" "gitconfig" "zshrc" "vimrc" "bashrc"
do
	eval $var$dot /home/sourabh/work/dotfiles 
done

# get to the 
cd /home/sourabh/work/dotfiles

# retrieves the current day,year for commit message
commit_message="date | cut -d ' ' -f 2,4,7"
echo "dot files updated $(eval $commit_message)" >> template.txt

# commits the changes
git add .
git commit --file template.txt

# removal necessary else the commit_message won't 
# be updated with new message as bash appends to
# the end of the file
rm template.txt

# via ssh so won't ask for authentication
git push origin master
