#!/bin/zsh
#dot_updater.sh
#runs every 15 days and copies dot-files and push them to git.

var="cp $HOME/."

# copies dotfiles into the current directory
for dot in "tmux.conf" "gitconfig" "zshrc" "vimrc"
do
	eval $var$dot $HOME/work/dotfiles 
done

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
