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

#Every server alias
alias x='exit'
alias scr='screen'
alias sc-r='screen -r'
alias sc-x='screen -x'
alias arka='tf arkadia.rpg.pl 23'
alias swmud='tf -f"./tfrc"'

#IRC settings
USERNAME="luz"
export IRCSERVER="krakow.irc.pl:6666 lublin.irc.pl:6666 polska.irc.pl:6666"
export IRCNICK="Bike123"
export IRCUMODE="+i"
export USERNAME="ChUj WaS tO" 
export IRCNAME="00,04..::[wLo] MembeR [wLo]::.."

# User specific aliases and functions
[[ -f ~/.bash.btb ]] && . ~/.bash.btb
[[ -d ~/.bashrc.d ]] && . ~/.bashrc.d/*
[[ -f `which powerline-daemon` ]] &&   powerline-daemon -q --replace &&  POWERLINE_BASH_CONTINUATION=1 &&  POWERLINE_BASH_SELECT=1 &&  . /usr/share/powerline/bash/powerline.sh
