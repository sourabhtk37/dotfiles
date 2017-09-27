# ssh
export SSH_KEY_PATH="~/.ssh/"

set -g theme_short_path yes
set -g theme_display_git yes 
set -g theme_display_git_untracked no
set -g theme_display_git_ahead_verbose yes
set -g theme_git_worktree_support no
set -g theme_display_virtualenv yes
set -g theme_display_user no 
set -g theme_display_vi yes
set -g theme_display_date yes
set -g theme_display_cmd_duration no
set -g theme_title_display_process yes
set -g theme_title_display_path no 
set -g theme_title_use_abbreviated_path yes
set -g theme_date_format "+%H:%M"
set -g theme_avoid_ambiguous_glyphs no
set -g theme_powerline_fonts no
set -g theme_nerd_fonts yes
set -g theme_show_exit_status yes
set -g default_user your_normal_user
set -g theme_color_scheme dark
set -g fish_prompt_pwd_dir_length 0
set -g theme_project_dir_length 1



#
# Aliases
# (sorted alphabetically)
#
# Set personal aliases. For a full list of active aliases, run `alias`.

alias pmm="python manage.py makemigrations"
alias pmmg="python manage.py migrate"
alias pmr="python manage.py runserver"
alias xo="xdg-open"
alias tmux="tmux -u"
alias update="sudo apt-get update"
alias upgrade="sudo apt-get upgrade"
alias install="sudo apt-get install"
alias apt="sudo aptitude"

alias g='git'
alias ga='git add'
alias gb='git branch'
alias gbs='git bisect'

alias gcb='git checkout -b'
alias gcf='git config --list'
alias gcl='git clone --recursive'
alias gclean='git clean -fd'
alias gcm='git checkout master'
alias gcd='git checkout develop'
alias gcm='git commit -m'
alias gco='git checkout'

alias gd='git diff'

alias gf='git fetch'

alias ghh='git help'

alias gpl='git pull'
alias glg='git log --stat'
alias glgp='git log --stat -p'
alias glgg='git log --graph'
alias glgga='git log --graph --decorate --all'
alias glo='git log --oneline --decorate'
alias glol="git log --graph --pretty='%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias glola="git log --graph --pretty='%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --all"
alias glog='git log --oneline --decorate --graph'
alias gloga='git log --oneline --decorate --graph --all'

alias gm='git merge'

alias gp='git push'

alias gr='git remote'
alias gra='git remote add'
alias grba='git rebase --abort'
alias grbc='git rebase --continue'
alias grb='git rebase -i'
alias grbm='git rebase master'
alias grbs='git rebase --skip'
alias grh='git reset HEAD'
alias grhh='git reset HEAD --hard'
alias grmv='git remote rename'
alias grrm='git remote remove'
alias grset='git remote set-url'
alias grup='git remote update'
alias grv='git remote -v'

alias gsi='git submodule init'
alias gss='git status -s'
alias gst='git stash'
alias gstd='git stash drop'
alias gstl='git stash list'
alias gstp='git stash pop'
alias gsts='git stash show --text'

alias gts='git tag -s'
alias gtv='git tag | sort -V'

alias gplr='git pull --rebase -v'


function pres 
				cd ~/work/presentation/
end

function cs
				cd ~/work/CodeShare/code_share; and source venv1/bin/activate.fish;
end

function ch
		cd ~/work/channels/; and source ch-env/bin/activate.fish;
end
