LOCAL_BIN=$HOME/.local/bin

source $LOCAL_BIN/p10k/init
source $HOME/.exports
# Seems to be plugins not .plugins
# source $ZSH_CUSTOM/.plugins
source $ZSH_CUSTOM/plugins
source $ZSH/oh-my-zsh.sh
source $HOME/.aliases
# source $HOME/.secrets
source $HOME/.zsh/.path
source $LOCAL_BIN/secrets_init
source $LOCAL_BIN/ssh_agent
source $LOCAL_BIN/bash_comp
source $LOCAL_BIN/fpath_init
source $LOCAL_BIN/tmux_session_init
eval "$(mcfly init zsh)"
source $LOCAL_BIN/asdf_init
source $LOCAL_BIN/pnpm_init
source $LOCAL_BIN/p10k/load
source "${XDG_CONFIG_HOME:-$HOME/.config}/asdf-direnv/zshrc"
export PATH="/opt/homebrew/opt/postgresql@12/bin:$PATH"
source /opt/homebrew/opt/asdf/libexec/asdf.sh
