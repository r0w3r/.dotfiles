# .bash_profile

# Get the aliases and functions
[[ -f ~/.bashrc ]]&& source ~/.bashrc
[[ -f ~/.bash.btb ]]&& source ~/.bash.btb
#[[ -f /etc/profile.d/bash-completion.sh ]] && source /etc/profile.d/bash-completion.sh

export LC_ALL=pl_PL.UTF-8
export LANG=pl_PL.UTF-8
export BX_PATH='/usr/local/bin'
export GAME_PATH='/usr/games'
#------------------linki------------------
#alias srut='sudo -i'
#-----------------uzytki-----------------
alias x='exit'
alias scr='screen'
alias sc-r='screen -r'
alias sc-x='screen -x'
alias arka='tf arkadia.rpg.pl 23'
alias swmud='tf -f"./tfrc"'
alias jezyk='echo "$LC_ALL"'
alias jezyk_n='export LC_ALL=pl_PL.ISO-8859-2 && export LANG=pl_PL.ISO-8859-2'
alias jezyk_u='export LC_ALL=pl_PL.UTF-8 && export LANG=pl_PL.UTF-8'

#----------------------------------------
# User specific environment and startup programs

PATH=$PATH:~/bin
BASH_ENV=$HOME/.bash_profie
USERNAME="luz"
export IRCSERVER="krakow.irc.pl:6666 lublin.irc.pl:6666 polska.irc.pl:6666"
export IRCNICK="Bike123"
export IRCUMODE="+i"
export USERNAME="ChUj WaS tO" 
export IRCNAME="00,04..::[wLo] MembeR [wLo]::.."

