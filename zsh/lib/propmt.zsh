autoload colors && colors
setopt prompt_subst

git_branch () {
  ref=$(/usr/bin/git symbolic-ref HEAD 2> /dev/null | awk -F/ {'print $NF'})
  if [[ $ref != "" ]]; then
    echo " %{$fg[yellow]%}$ref%{$reset_color%}"
  fi
}

git_dirty () {
  st=$(/usr/bin/git status 2> /dev/null)
  if [[ $st != "" ]]; then
    local -a arr
    arr=(${(f)st})
    if [[ $st =~ "nothing to commit" ]]; then
    else
      echo "%{$fg[red]%} +%{$reset_color%}"
    fi
  fi
}

git_stashes_count () {
  st_num=$(/usr/bin/git stash list 2> /dev/null | wc -l | tr -d ' ')
  if [[ $st_num != "0" ]]; then
    echo " %{$fg[red]%} ($st_num)%{$reset_color%}"
  fi
}

# wo ruby info
export PROMPT='%{$reset_color%}%{$fg[blue]%}%c%{$reset_color%} $(git_branch)$(git_dirty)$(git_stashes_count)
%# '
