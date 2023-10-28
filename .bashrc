#launch settings
alias settings='gnome-control-center'

alias aussagenlogik="source $HOME/softwaredev/tools/venv/bin/activate && python3 $HOME/softwaredev/Aussagenlogik/main.py && deactivate"

chmod -R +x "$HOME/config/scripts"
chmod -R +x "$HOME/config/globalscripts"
export PATH="$PATH:$HOME/config/globalscripts"
source "$HOME/config/scripts/launch"