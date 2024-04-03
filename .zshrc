LOCAL_BIN=$HOME/.local/bin

source $LOCAL_BIN/p10k/init
source $HOME/.exports
source $ZSH_CUSTOM/.plugins
source $ZSH/oh-my-zsh.sh
source $HOME/.aliases
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
