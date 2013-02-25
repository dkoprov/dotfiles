autoload colors && colors
setopt prompt_subst

git_branch () {
  ref=$(/usr/bin/git symbolic-ref HEAD 2> /dev/null | awk -F/ {'print $NF'})
  if [[ $ref == "" ]]; then
    echo ""
  else
    echo " %{$fg[yellow]%}$ref%{$reset_color%}"
  fi
}

git_dirty () {
  st=$(/usr/bin/git status 2> /dev/null)
  if [[ $st == "" ]]; then
    echo ""
  else
    local -a arr
    arr=(${(f)st})
    if [[ $st =~ "nothing to commit" ]]; then
    else
      echo "%{$fg[red]%} +%{$reset_color%}"
    fi
  fi
}

rbenv_prompt_info() {
  local ruby_version
  ruby_version=$(rbenv version 2> /dev/null) || return
  echo "‹$ruby_version" | sed 's/[ \t].*$/›/'
}

# with ruby information
#export PROMPT='%{$reset_color%}%{$fg[blue]%}%c%{$reset_color%} %{$fg[red]%}$(rbenv_prompt_info)%{$reset_color%}% $(git_branch)$(git_dirty) 
#%# '

# wo ruby info
export PROMPT='%{$reset_color%}%{$fg[blue]%}%c%{$reset_color%} $(git_branch)$(git_dirty)
%# '
