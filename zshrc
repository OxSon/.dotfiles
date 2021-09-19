
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
#
export ZSH="$HOME/.oh-my-zsh"
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
    colored-man-pages
    command-not-found
    zsh_reload
    zsh-completions
    fzf
    history-substring-search
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# User configuration

#BROKEN
#Import colorscheme from 'wal' asynchronously
# & --run the process in the background
# ( ) --hide shell job control messages
#(cat ~/.cache/wal/sequences &)
#add support for TTYs
#source ~/.cache/wal/colors-tty.sh

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
export EDITOR=$(which nvim)
export VISUAL=$(which nvim)
#TERMINAL for i3
export TERMINAL=$(which kitty)

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"
#ssh stuff
if ! pgrep -u "$USER" ssh-agent > /dev/null; then
    ssh-agent > ~/.ssh-agent-thing
fi
if [[ "$SSH_AGENT_PID" == "" ]]; then
    eval "$(<~/.ssh-agent-thing)"
fi

# Setup pure-prompt
autoload -U promptinit; promptinit
prompt pure

##########Aliases#######
alias la="ls -a"
alias xclip="xclip -sel clip"
alias tmux="tmux -2"
alias ghc="ghc -dynamic"
alias vtop="wal-vtop &> /dev/null; vtop -t wal"
alias pipes="pipes.sh"

#aliases to replace some cli tools
alias vim="nvim"
alias vi="nvim"
alias cat="bat"
alias ping="prettyping"
#allman style braces, indent=4spaces, indent namespaces, attached braces namespaces, broken else
alias astyle="astyle -s4A1xnNk2"

#task alias
alias taskpull="git -C ~/.dotfiles submodule update task"
alias taskpush="git -C ~/.dotfiles/task add backlog.data pending.data undo.data && git -C ~/.dotfiles/task commit -m 'Update tasks' && git -C ~/.dotfiles/task push && git -C ~/.dotfiles add task && git -C ~/.dotfiles commit -m 'Update tasks' && git -C ~/.dotfiles push"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$HOME/go/bin:$HOME/.gem/ruby/2.7.0/bin:$PATH"

#Vi mode for shell#
set -o vi

#Completion stuff######
#
#location for custom completion scripts
fpath+=~/.zfunc

#for kitty
autoload -Uz compinit
compinit
kitty + complete setup zsh | source /dev/stdin
alias kssh="kitty +kitten ssh" # make kitty upload terminfo to server we're sshing into

#pip
eval "`pip completion --zsh`"
#pip3
compctl -K _pip_completion pip3

alias py="python"

#Caps -> Esc
#setxkbmap -option caps:escape

# access student work and hw solns for TA work
alias login3520="xfce4-terminal -x ssh u1272177@cs3520.eng.utah.edu"
alias dl3520="xfce4-terminal -x sftp u1272177@cs3520.eng.utah.edu"

# command suggestions
source /usr/share/doc/find-the-command/ftc.zsh
