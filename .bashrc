# PATH STUFF
export PATH="$PATH:$HOME/bin:/usr/local/bin"

# GIT STUFF
# repository: https://github.com/git/git/tree/master/contrib/completion
if [ -f ~/.git-prompt.sh ]; then
  export GIT_PS1_SHOWDIRTYSTATE=true
  source ~/.git-prompt.sh
fi
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# BASH COMPLETION STUFF
# I actually don't know where this comes from...
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

# NVM STUFF
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export EDITOR=atom

# PROMPT STUFF
# colors documentation: https://misc.flogisoft.com/bash/tip_colors_and_formatting
BLUE='\[\e[38;5;74m\]'
RED='\[\e[38;5;197m\]'
PURPLE='\[\e[38;5;99m\]'
ORANGE='\[\e[38;5;208m\]'
YELLOW='\[\e[38;5;221m\]'
RESET='\[\e[0m\]'
PS1="\n${BLUE}\w${YELLOW}\$(__git_ps1 ' [%s]')${RESET}\n$ "
