# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

alias ll='ls -alF'
alias la='ls -A'
alias lc='ls -CF'
alias l='ls -ltr'

alias stail='./startup.sh && tail -f ../logs/catalina.out'
alias t=todo.sh
alias please='sudo $(fc -ln -1)'
alias dxp-profile='ant setup-profile-dxp'
alias mvn=/home/achaparro/software/apache-maven-3.6.1/bin/mvn
alias gpum='git pull upstream master'
alias restartplasma='killall plasmashell && kstart plasmashell'
