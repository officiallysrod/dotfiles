# Load in the git branch prompt script
source ~/git-prompt.sh

# Load .bashrc for aliases
source ~/.bashrc

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

#enable shims and autocompletion
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

#customize some Terminal appearance preferences
alias ls='ls -GFh'  #-G colorizes output, -h makes sizes human readable, -F adds markers to directories and executables
COLOR_BOLD="\[\e[1m\]"
COLOR_DEFAULT="\[\e[0m\]"
# PS1="$COLOR_BOLD\w$COLOR_DEFAULT\$(__git_ps1)$COLOR_BOLD $ $COLOR_DEFAULT"
# Custom bash prompt via kirsle.net/wizards/ps1.html
PS1="\[$(tput setaf 6)\]\w\[$(tput setaf 5)\]\$(__git_ps1)\[$(tput setaf 6)\] $ \[$(tput sgr0)\]"

#default bundler editor
export BUNDLER_EDITOR="subl"

#use macvim for console
alias vim='/usr/local/bin/gvim -v'

test -e ${HOME}/.iterm2_shell_integration.bash && source ${HOME}/.iterm2_shell_integration.bash
