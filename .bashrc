# .bashrc

# Source global definitions
[[ -f /etc/bashrc ]] && . /etc/bashrc
# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
[[ -f ~/.bash.btb ]] && . ~/.bash.btb
[[ -d ~/.bash.d ]] && . ~/.bash.d/*
[[ -f `which powerline-daemon` ]] &&   powerline-daemon -q --replace &&  POWERLINE_BASH_CONTINUATION=1 &&  POWERLINE_BASH_SELECT=1 &&  . /usr/share/powerline/bash/powerline.sh
