# debloat brave: https://github.com/MulesGaming/brave-debloatinator
export BROWSER=brave
export TERM=alacritty
export MAIL=thunderbird
export EDITOR=nvim
export VISUAL=nvim
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
export QT_QPA_PLATFORMTHEME="qt5ct"
export QT_AUTO_SCREEN_SCALE_FACTOR=0
export NVM_LAZY_LOAD=true
export NVM_COMPLETION=true

# PATH
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH="$PATH:$HOME/.local/bin:$GOBIN:$HOME/.config/composer/vendor/bin"

# FUNCTIONS
loadf() {
  # NVM
  export NVM_DIR="$HOME/.config/nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
  # [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

  # PYENV
  export PYENV_ROOT="$HOME/.pyenv"
  [[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
  eval "$(pyenv init -)"
}

# VI-MODE
if [ -n "$ZSH_VERSION" ]; then
  autoload edit-command-line
  zle -N edit-command-line
  bindkey -v
  bindkey "^V^V" edit-command-line
fi

# ALIASES
alias giig="git log --graph --abbrev-commit --decorate=short --date=relative --all --pretty=format:'%C(auto)%h %C(bold blue)(%ar)%C(reset) %C(yellow)%d%C(reset) %s %C(dim white)- %an%C(reset)'"
alias giamend="git commit --amend"
alias giclean="git clean -f -d"
alias giundo="git reset --soft HEAD~1"
alias gireset="git reset --hard"
alias gim="git commit -m"
alias gip="git push"
alias gipf="git push --force"
alias giu="git pull"
alias giic="git checkout"
alias giicb="git checkout -b"
alias gitag="git tag -a"
alias gitagdel="git tag -d"
alias gitags="git tag -l"
alias gitagpush="git push origin --tags"
alias gitagpushdel="git push origin --delete tag"

# AUTO GUI
# if [[ -z $DISPLAY ]] && [[ $(tty) == /dev/tty1 ]]; then
#   # exec Hyprland
#   # exec i3
# fi

# PROMPT
PS1=" > "
