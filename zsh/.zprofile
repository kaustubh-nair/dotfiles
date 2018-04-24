PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"
export GEM_HOME=$HOME/.gem
if [ -f "$HOME/.bashrc" ]; then
  source $HOME/.bashrc
fi

