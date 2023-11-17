#launch settings
alias settings='gnome-control-center'

alias ls='ls -1 --color=auto'

alias aussagenlogik="source $HOME/softwaredev/tools/venv/bin/activate && python3 $HOME/softwaredev/Aussagenlogik/main.py && deactivate"

alias st="cd \$(find "$HOME/studium/sem1" -mindepth 1 -maxdepth 1 -type d | fzf)"

export PATH="$PATH:$HOME/config/globalscripts"
source "$HOME/config/scripts/launch"