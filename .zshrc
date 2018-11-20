# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# padcom
# theunraveler
# edvardm
# simonoff
# Customizing tips: https://github.com/robbyrussell/oh-my-zsh/wiki/Customization

# From: ~/.oh-my-zsh/themes/
# "random", loads a random theme each time that oh-my-zsh is loaded.
ZSH_THEME="tammo"

# Case sensitive completion must be off. _ and - are interchangeable.
HYPHEN_INSENSITIVE="true"

# to enable command auto-correction.
#ENABLE_CORRECTION="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git mercurial command-not-found gitignore mvn autojump gradle zsh-syntax-highlighting)

###########################################################
###########################################################
#                   User configuration                    #
###########################################################
###########################################################
# Use modern completion system
 autoload -Uz compinit
 compinit

# let zstyle talk to us aplenty, so we understand it better
 zstyle ':completion:*' verbose true
# format
 zstyle ':completion:*'               format '---- Kompletujemy: %d'
 zstyle ':completion:*:warnings'      format "%B---- Aj waj! Brakło dopasowania w: %d%b"
 zstyle ':completion:*:descriptions'  format $'---- Opis %B%d%b'
 zstyle ':completion:*:messages'      format '%B%U---- %d%u%b'


# let's use the tag name as group name
 zstyle ':completion:*' group-name ''

# Menu selection via tab 
 zstyle ':completion:*' menu select
# zstyle ':completion:*' menu select=long
# zstyle ':completion:*' menu select=2 eval "$(dircolors -b)"

# inne, nierozpoznane jeszcze do końca
# zstyle ':completion:*' auto-description 'specify: %d'
# zstyle ':completion:*' completer _expand _complete _correct _approximate
# zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
# zstyle ':completion:*' list-colors ''
# zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
# zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
# zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
# zstyle ':completion:*' use-compctl false

# odpytaj procesy pisząc kill odpal ps -u... by mieć listę
 zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
 zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'
 
# test javovy
 zstyle ':completion:_java_flags:*:java -X:*' auto-description prefix-hidden

# Vi shortcuts in CLI
bindkey -v

# HISTORY for Tmux

SAVEHIST=5000 # Number of entries
HISTSIZE=5000
HISTFILE=~/.zsh_history # File
setopt APPEND_HISTORY # Don't erase history
setopt EXTENDED_HISTORY # Add additional data to history like timestamp
setopt INC_APPEND_HISTORY # Add immediately
setopt HIST_FIND_NO_DUPS # Don't show duplicates in search
setopt HIST_IGNORE_SPACE # Don't preserve spaces. You may want to turn it off
setopt NO_HIST_BEEP # Don't beep
setopt SHARE_HISTORY # Share history between session/terminals

# variable to shorten adoc calls to reveal.js
ADOC_TMPLT_PATH="/home/tammo/RDZ/asciidoctor-reveal.js/templates/slim"

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/opt/idea-ulti-2017/bin:/opt/node-v4.6.0-linux-x64/bin:/opt/freemind/:/home/tammo/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
export EDITOR='vim'

# WeChall scores
export WECHALLUSER="LAFK_pl"
export WECHALLTOKEN="3C91F-A7ABD-C823D-83520-58E7B-F1528"

# Ściągi via cheat z podświetlaniem składni
export CHEATCOLORS=true

# personal aliases override others (from libs, plugins, themes). 
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
alias _=sudo
alias nagraj="byzanz-record"
alias nagraj-help="byzanz-record --help"
alias zshrc="$EDITOR ~/.zshrc"
alias vimrc="$EDITOR ~/.vimrc"
alias quick-rand="perl -e 'print(int(rand($1)))'"
#common aliases and directories have alias defined here
alias l=lock.sh
alias freemind="freemind.sh &"
alias żurnal=journalctl
alias finger=loginctl
alias dzwonek="paplay /usr/share/sounds/freedesktop/stereo/complete.oga"
alias akademia=/home/tammo/rdzy/epam/ja-materials
alias akademiaWiki=/home/tammo/rdzy/epam/ja-materials.wiki
alias epamowyPakiet="echo epam.tjb.edu.pl"
alias masło="echo ti7LWLKI"
alias j2d="/home/tammo/tests/JDKTests/jdk1.8.0_60-demos/demo/jfc/Java2D"
alias nrkonta="echo 45 2490 0005 0000 4004 5324 1140"
## Java 9
alias j9pkg="/usr/java/jdk-9.0.1/bin/"
alias javac9="/home/tammo/Pobrane/tmp-jdk9/jdk-9/bin/javac"
alias java9="/home/tammo/Pobrane/tmp-jdk9/jdk-9/bin/java"
alias javapackager9="/home/tammo/Pobrane/tmp-jdk9/jdk-9/bin/javapackager"
alias jps9="/home/tammo/Pobrane/tmp-jdk9/jdk-9/bin/jps"

alias tlk="cd ~/projects/TLK"
alias lstree="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/   /' -e 's/-/|/' "
alias bazka="/opt/sqldeveloper/sqldeveloper.sh"
# one liner courtesy of Anderson Pierre (protip from Coderwall)
alias historyTop10="history | awk '{a[$2]++}END{for(i in a){print a[i] " " i}}' | sort -rn | head"


function mvnhelp {
    mvn $1\:help -Ddetail=true -Dgoal=$2
}

function epamowaChmura {
    export JAVA_HOME=/usr/lib/jvm/default-java/
    cd /home/tammo/rdzy/epam/maestro-cli/bin/
    echo https://cloud.epam.com/site/learn/quick_start/csug_01_quick_start.pdf
}

# Tmux functions
# split with command
function tmw {
        tmux split-window -dh "$*"
}

# Mapa pakietów
function zależnościDoMapyPakietów {
    jdeps -e $1 -apionly -verbose:package -recursive -dotoutput . $2
    # jeśli z zależnościami do API Javy, to bez verbose, recursive, samo apionly
    # -jdkinternals da Ci co innego ciekawego
}

function mapaPakietów {
    twopi -Goverlap=scale -Tpng $1 -o mapa.png
    #twopi -Goverlap=scale -Tsvg $1 -o mapa.svg
    #asciidoctor nie łapie SVG, stąd PNG
    echo Możesz dodać style, jeśli chcesz, albo wyspecifykować inne skalowanie lub inny węzeł centralny. Wykonaj man twopi i czytaj o atrybutach twopi.
    xdg-open mapa.png
}

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/tammo/.sdkman"
[[ -s "/home/tammo/.sdkman/bin/sdkman-init.sh" ]] && source "/home/tammo/.sdkman/bin/sdkman-init.sh"
