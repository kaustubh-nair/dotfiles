# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=/home/kau/.oh-my-zsh


  #
  #
  #
  #
# alien minimal customizations
export AM_SHOW_FULL_DIR=1 # shows the full dir path
export AM_GIT_SYM=git

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
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
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  vundle
  github
  vi-mode
  zsh-autosuggestions
  zsh-256color
  alien-minimal
  web-search
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
bindkey '^ ' autosuggest-accept

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.

alias vmi='vim'
alias vim='nvim'
alias c="clear"
alias d="docker"
alias dr="docker run"
alias di="docker image"
alias dc="docker-compose"
alias rg="rails generate"
alias rdm="rails db:migrate"
alias rd="rails destroy"
alias rdd="rails db:drop"
alias rr="rails routes"
alias sudo pacman -S="pac"
alias lg="ls -a | grep"
alias rdc='rails db:create'
alias rc='rails console'
alias rds='rails db:seed'
alias holyrails='rails db:drop && rails db:create && rails db:migrate'
alias gk='git checkout'
alias gb='git branch'
alias gd='git diff'
alias gst='git status'
alias gl='git log'
alias softreset='git reset HEAD~'
alias grc='git rebase --continue'
alias ga='git add .'
alias gdh='git diff HEAD~ HEAD'

gc(){
  git add .
  if [ -z "$1" ]
  then
    git commit
  else
    git commit -m "$1"
  fi
}
gp(){
  git push $1 $(git rev-parse --abbrev-ref HEAD)
}
gpo(){
  git push origin $(git rev-parse --abbrev-ref HEAD)
}
gpu(){
  git push upstream $(git rev-parse --abbrev-ref HEAD)
}
gpl(){
  git pull $1 $(git rev-parse --abbrev-ref HEAD)
}
gplo(){
  git pull origin $(git rev-parse --abbrev-ref HEAD)
}
gplu(){
  git pull upstream $(git rev-parse --abbrev-ref HEAD)
}
gcp()
{
  git cherry-pick $1
}
alias gr="git rebase"
#compile and run java commands
j(){
  javac "$1"
  java ${1%.java}
}

export VISUAL=vim
export EDITOR="$VISUAL"
function cats() {
	rdm=$(( ((RANDOM<<15)|RANDOM) % 5000 ));
	if test $rdm -lt 400
	then
		base64 -D <<< "ICAgICAgICAgICAgICAgICAgVC4iLS5fLi4tLS0uLl8sLSIvfAogICAgICAgICAgICAgICAgICBsfCItLiAgXy52Ll8gICAoIiB8CiAgICAgICAgICAgICAgICAgIFtsIC8uJ18gXDsgX34iLS5gLXQKICAgICAgICAgICAgICAgICAgWSAiIF8ob30gX3tvKS5fIF4ufAogICAgICAgICAgICAgICAgICBqICBUICAsLTx2Pi0uICBUICBdCiAgICAgICAgICAgICAgICAgIFwgIGwgKCAvLV4tXCApICEgICEKICAgICAgICAgICAgICAgICAgIFwuIFwuICAifiIgIC4vICAvYy0uLixfXwogICAgICAgICAgICAgICAgICAgICBeci0gLi5fIC4tIC4tIiAgYC0gLiAgfiItLS4KICAgICAgICAgICAgICAgICAgICAgID4gXC4gICAgICAgICAgICAgICAgICAgICAgXAogICAgICAgICAgICAgICAgICAgICAgXSAgIF4uICAgICAgICAgICAgICAgICAgICAgXAogICAgICAgICAgICAgICAgICAgICAgMyAgLiAgIj4gICAgICAgICAgICAuICAgICAgIFkKICAgICAgICAgLC5fXy4tLS5fICAgX2ogICBcIH4gICAuICAgICAgICAgOyAgICAgICB8CiAgICAgICAgKCAgICB+Ii0uX34iXi5fXCAgIF4uICAgIF4uXyAgICAgIEkgICAgIC4gbAogICAgICAgICAiLS5fIF9fXyB+Ii0sXzcgICAgLlotLl8gICA3IiAgIFkgICAgICA7ICBcICAgICAgICBfCiAgICAgICAgICAgIC8iICAgIn4tKHIgciAgXy9fLS0uX34tLyAgICAvICAgICAgLywuLS1eLS5fICAgLyBZCiAgICAgICAgICAgICItLl8gICAgJyJ+fn4+LS5ffl0+LS1eLS0tLi9fX19fLC5efiAgICAgICAgXi5eICAhCiAgICAgICAgICAgICAgICB+LS0uXyAgICAnICAgWS0tLS4gICAgICAgICAgICAgICAgICAgICAgICBcLi8KICAgICAgICAgICAgICAgICAgICAgfn4tLS5fICBsXyAgICkgICAgICAgICAgICAgICAgICAgICAgICBcCiAgICAgICAgICAgICAgICAgICAgICAgICAgIH4tLl9+fn4tLS0uXyxfX19fLi4tLS0gICAgICAgICAgIFwKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIH4tLS0tIn4gICAgICAgXAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXA=="
	else
		/bin/cat $1
	fi;
}

. ~/.oh-my-zsh/plugins/z/z.sh

g(){
  gcc $1
  ./a.out
}

ali(){
  echo alias $* >> ~/.zshrc
  source ~/.zshrc
}
cdl() { cd "$@" && ls; }
alias pip='pip3'
cdl() { cd "$@" && ls; }
alias turnoff='xrandr --output eDP-1 --off'
alias turnoon='xrandr --output eDP-1 --on'
alias lss='ls --sort time | head -n 10'
myzip(){
  mkdir temp
  mv $1 temp
  cd temp
  unzip $1
  rm $1
  mv * ../$2
  cd ..
  rm -rf temp
}

alias p='python3 -W ignore'

crun() {
  rm a.out
  g++ $1
  ./a.out
}
drun() {
  rm a.out
  g++ -g $1
  gdb a.out
}

create_for_c()
{
  echo "clear\n rm a.out\n g++ \n ./a.out\n" >> run.sh
  chmod +x run.sh
}

alias hdmi='pactl set-card-profile 0 output:hdmi-stereo'
alias nohdmi='pactl set-card-profile 0 output:analog-stereo'
alias psg='ps aux | grep'
export DESKTOP_SESSION="kde"
export XDG_CURRENT_DESKTOP="KDE"
export PATH="$HOME/.cargo/bin:$PATH"
export LC_ALL="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"


ru(){
  rustc "$1"
  ./${1%.rs}
}

alias apti='sudo apt install -y'
alias ggraph="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(auto)%d%C(reset)' --all"

killem() {
  sudo kill -9 $(ps aux | grep "$1" | awk '{print$2}'| tail -n 10)
}

vid_to_gif() {
  mkdir frames
  ffmpeg -i $1 -r 15 -q:v 2 frames/%04d.png
  gifski -o $2 frames/*.png
  rm -rf frames
}


#--- zulip   ---#
# run checks
alias lin='./tools/lint-all'

alias unity="./proj/unity/UnityHub.AppImage"

export DESKTOP_SESSION="kde"
export XDG_CURRENT_DESKTOP="KDE"
export KDE_SESSION_VERSION="5"

reminder_cd() {
    builtin cd "$@" && { [ ! -f .cd-reminder ] || cat .cd-reminder 1>&2; }
}

alias cd=reminder_cd

reminder_z() {
    z "$@" && { [ ! -f .cd-reminder ] || cat .cd-reminder 1>&2; }
}

alias z=reminder_z

alias vu="vagrant up --provider=docker"
alias vs="vagrant ssh"
alias v="vs;vu"
