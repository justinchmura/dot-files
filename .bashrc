PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
:
function color_my_prompt {
  local __time="\[\e[00;30m\]\@\[\e[0m\]"
  local __cur_location="\[\033[00;34m\]\w"
  local __git_branch_color="\[\033[32m\]"
  local __git_branch='`git branch 2> /dev/null | grep -e ^* | sed -E  s/^\\\\\*\ \(.+\)$/\(\\\\\1\)\ /`'
  local __prompt_tail="\[\033[37m\]$"
  local __last_color="\[\033[00m\]"
  export PS1="$__time $__cur_location $__git_branch_color$__git_branch\n$__prompt_tail$__last_color "
}
color_my_prompt
