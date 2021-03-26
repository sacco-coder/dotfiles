export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export PATH="/opt/homebrew/bin":$PATH
export PATH="$PATH:/Users/m/Library/flutter/bin"
export ZSH="/Users/m/.oh-my-zsh"
ZSH_THEME="robbyrussell"
DISABLE_AUTO_TITLE="true"
plugins=(sublime git fzf)
source $ZSH/oh-my-zsh.sh
alias python="python3"
alias nvimconfig="nvim ~/.config/nvim/init.vim"
alias xresourceseconfig="nvim ~/.Xresources"
alias i3config="nvim ~/.config/i3/config"
alias ms="cd ~/Writing/MirkoSacchetti"
alias zshconfig="nvim ~/.zshrc"
alias jn="jupyter notebook"
alias wn="cd ~/Code/WiNet"
alias pr="cd ~/Projects"
alias co="cd ~/Code"
alias sed="gsed"
alias vim="nvim"
alias vi="nvim"

qn(){
  if [[ $1 = '-l' ]]; then
    ls -l ~/Writing/notes
  elif [[ $1 ]]; then
    nvim ~/Writing/notes/$1
  else
    nvim ~/Writing/notes/random_note_$(date +'%Y_%m_%d__%H_%M')
  fi
}

m_makenewpassword (){
  if [ -z "$1" ]; then
    head /dev/urandom | tr -dc A-Za-z0-9 | head -c 13; echo ''
  else
    head /dev/urandom | tr -dc A-Za-z0-9 | head -c $1; echo ''
  fi
}

m_killmyport(){
  sudo fuser -k -n tcp $1
}

m_downloadyoutubeaudio(){
  cd ~/Documents/synthMusic         
  youtube-dl -f 'bestaudio[ext=m4a]' $1
}

m_dstorefucker(){
  defaults write com.apple.desktopservices DSDontWriteNetworkStores true
  sudo find ~/ -name .DS_Store -depth -exec rm {} \;
}

m_listenyoutubeaudio() {
  mpv $1 --no-video
}

m_condainit(){ 
  # >>> conda initialize >>>
  # !! Contents within this block are managed by 'conda init' !!
  __conda_setup="$('/opt/homebrew/Caskroom/miniforge/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
  if [ $? -eq 0 ]; then
    eval "$__conda_setup"
  else
    if [ -f "/opt/homebrew/Caskroom/miniforge/base/etc/profile.d/conda.sh" ]; then
      . "/opt/homebrew/Caskroom/miniforge/base/etc/profile.d/conda.sh"
    else
      export PATH="/opt/homebrew/Caskroom/miniforge/base/bin:$PATH"
    fi
  fi
  unset __conda_setup
  # <<< conda initialize <<<
}

