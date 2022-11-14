# .bashrc

# Source global definitions
[[ -f /etc/bashrc ]] && . /etc/bashrc
# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin" ]]
then
    PATH="$PATH:$HOME/.local/bin "
fi
export PATH

# Load starship prompt if starship is installed
if  [ -x /usr/bin/starship ]; then
    __main() {
        local major="${BASH_VERSINFO[0]}"
        local minor="${BASH_VERSINFO[1]}"

        if ((major > 4)) || { ((major == 4)) && ((minor >= 1)); }; then
            source <("/usr/bin/starship" init bash --print-full-init)
        else
            source /dev/stdin <<<"$("/usr/bin/starship" init bash --print-full-init)"
        fi
    }
    __main
    unset -f __main
fi
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

#Powerline
[[ `command -v powerline-daemon` ]] &&   powerline-daemon -q --replace &&  POWERLINE_BASH_CONTINUATION=1 &&  POWERLINE_BASH_SELECT=1 || return
[[ -f /usr/share/powerline/bash/powerline.sh ]] && . /usr/share/powerline/bash/powerline.sh || return
[[ -f /usr/share/powerline/bindings/bash/powerline.sh ]] && . /usr/share/powerline/bindings/bash/powerline.sh || return
