export EDITOR=/usr/bin/vim
export PATH=$PATH:/usr/local/go/bin

function color_my_prompt {
  local __time="\[\e[1;30m\]\@\[\e[0m\]"
  local __cur_location="\[\033[00;36m\]\w"
  local __git_branch_color="\[\033[32m\]"
  local __git_branch='`git branch 2> /dev/null | grep -e ^* | sed -E  s/^\\\\\*\ \(.+\)$/\(\\\\\1\)\ /`'
  local __prompt_tail="\[\033[37m\]$"
  local __last_color="\[\033[00m\]"
  export PS1="$__time $__cur_location $__git_branch_color$__git_branch\n$__prompt_tail$__last_color "
}

color_my_prompt

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
