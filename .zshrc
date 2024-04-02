# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
typeset -g POWERLEVEL9K_INSTANT_PROMPT=off
ZSH_DISABLE_COMPFIX=true

source ~/.exports

plugins=(
  colored-man-pages
  colorize
  docker
  docker-compose
  dotenv
  gem
  git
  httpie
  jsontools
  kubectl
  node
  npm
  pip
  pyenv
  pylint
  python
  postgres
  rake
  rbenv
  ruby
  sudo
  tmux
  tmuxinator
  vi-mode
  vundle
  zsh-asdf-prompt
  1password
  zsh-256color
  zsh-asdf-direnv
  zsh-ask
)

source $ZSH/oh-my-zsh.sh
source ~/.aliases
source ~/.zsh_custom/.path

# Secrets
if [[ -a ~/.secrets ]]; then
  source ~/.secrets
fi

# SSH Agent
if [ ! -S ~/.ssh/ssh_auth_sock ]; then
  eval `ssh-agent`
  ln -sf "$SSH_AUTH_SOCK" ~/.ssh/ssh_auth_sock
fi
ssh-add -l > /dev/null || ssh-add

autoload bashcompinit
bashcompinit

fpath=(/usr/local/share/zsh/site-functions $fpath)

if [[ $TMUX == '' ]]; then
  tmux new-session -A -s main
  # tmux -CC
fi

# ASDF
fpath=(${ASDF_DIR}/completions $fpath)

# McFly
eval "$(mcfly init zsh)"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Powerlevel10k instant prompt. Should stay close to the bottom of ~/.zshrc.
source /usr/local/share/powerlevel10k/powerlevel10k.zsh-theme
source "${XDG_CONFIG_HOME:-$HOME/.config}/asdf-direnv/zshrc"
export PATH="/usr/local/opt/postgresql@12/bin:$PATH"
source /usr/local/opt/asdf/libexec/asdf.sh

# pnpm
export PNPM_HOME="/Users/shanesmith/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
