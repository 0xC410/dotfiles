export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME=()

ENABLE_CORRECTION="true"

plugins=(git zsh-syntax-highlighting colored-man-pages)

source $ZSH/oh-my-zsh.sh

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

### Navegação
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias ll="ls -lh"
alias la="ls -lha"
alias l.="ls -d .* --color=auto"

### Facilidade
alias zshconfig="vim $HOME/dotfiles/zsh/.zshrc"
alias zshupdate="source $HOME/dotfiles/zsh/.zshrc"
alias tmuxconfig="vim $HOME/dotfiles/tmux/.tmux.conf"

### Histórico
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
HIST_STAMPS="0"
setopt share_history    # compartilha histório entre sessões
setopt correct          # sugere correções de comando errado
setopt notify           # mostra quando jobs terminam

export PATH="$HOME/.local/bin:$PATH"
export PROMPT=$'┌─[%F{84}%n@%m%f in %F{84}$(pwd)%f at %F{84}%D{%d/%b/%Y %T}%f]\n└─[%F{84}\$%f] '
