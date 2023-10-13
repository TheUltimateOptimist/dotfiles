#launch settings
alias settings='gnome-control-center'

alias so='i3-msg "exec google-chrome --new-window" && exit'

alias sp='i3-msg "exec google-chrome chat.openai.com --new-window" && exit'

alias sm='i3-msg "exec google-chrome github.com --new-window" && exit'

#execute custom scripts
alias co="bash $HOME/config/scripts/code"
alias r="bash $HOME/config/scripts/run"
alias xp="bash $HOME/config/scripts/xournalpp"
alias gitit="bash $HOME/config/scripts/gitit"
alias tools='bash $HOME/config/scripts/tools'

source "$HOME/config/scripts/launch"