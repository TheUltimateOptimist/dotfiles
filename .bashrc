#launch settings
alias settings='gnome-control-center'

alias ls='ls -1 --color=auto'

alias aussagenlogik="source $HOME/softwaredev/tools/venv/bin/activate && python3 $HOME/softwaredev/Aussagenlogik/main.py && deactivate"

alias st="cd \$(find "$HOME/studium/sem1" -mindepth 1 -maxdepth 1 -type d | fzf) && ls"

alias eclipse="nohup ~/eclipse/java-2024-03/eclipse/eclipse &"
alias gpt4all="~/gpt4all/bin/chat"

export PATH="$PATH:$HOME/config/globalscripts"
source "$HOME/config/scripts/launch"