# Add hub to git alias
eval "$(hub alias -s)"

# Other useful aliases
alias c='clear'
alias lh='ls -d .*' # show hidden files/directories only
alias l='ls -al'
alias ls='ls -GFh' # Colorize output, add file type indicator, and put sizes in human readable format
alias ll='ls -GFhl' # Same as above, but in long listing format
alias ~='cd ~'

# Git aliases
alias gl='git log'
alias gs='git status'
alias gd='git diff'
alias gm='git commit -m'
alias gb='git branch'
alias gc='git checkout'

# Show the total number of commits
alias gsh="git shortlog | grep -E '^[  ]+\w+' | wc -l"

# Shows a list of all developers and the number of commits they've made
alias gu="git shortlog | grep -E '^[^ ]'"

# Heroku aliases
alias hrc='heroku run rails c'
alias hrdb='heroku run rake db:migrate'
alias hlogs='heroku logs --tail'
