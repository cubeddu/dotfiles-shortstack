# https://github.com/robbyrussell/oh-my-zsh/blob/master/themes/steeef.zsh-theme
#use extended color pallete if available
if [[ $TERM = *256color* || $TERM = *rxvt* ]]; then
    turquoise="%F{81}"
    orange="%F{166}"
    purple="%F{135}"
    hotpink="%F{161}"
    limegreen="%F{118}"
else
    turquoise="$fg[cyan]"
    orange="$fg[yellow]"
    purple="$fg[magenta]"
    hotpink="$fg[red]"
    limegreen="$fg[green]"
fi

precmd() {
  # untracked files or unstaged files
  PROMPT="%{$reset_color%}%p %{$reset_color%}%c %{$reset_color%}$(git_prompt_info) %{$reset_color%}"

  # is a git repo
  if [ -d .git ] || git rev-parse --git-dir > /dev/null 2>&1; then
    # has unstaged or untracked files
    if git ls-files --other --exclude-standard 2> /dev/null | grep -q "." || ! git diff --exit-code --quiet; then
      PROMPT+="%{$hotpink%}● %{$reset_color%}"
    else
      # has uncommited files
      if ! git diff-index --quiet --cached HEAD 2> /dev/null ; then
        PROMPT+="%{$limegreen%}● %{$reset_color%}"
      fi
    fi;
  fi;
}

ZSH_THEME_GIT_PROMPT_PREFIX="(%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%})"
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN=""
