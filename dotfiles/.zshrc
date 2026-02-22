# oh-my-zsh setup
DISABLE_AUTO_UPDATE="true"
DISABLE_MAGIC_FUNCTIONS="true"
DISABLE_COMPFIX="true"

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(
  1password
  gcloud
  git
  redis-cli
  mise
)
source $ZSH/oh-my-zsh.sh

# ensure that our externally compiled python from uv finds all the libraries it needs
export DYLD_LIBRARY_PATH="/opt/homebrew/lib"

# Fuzzy FZF
source <(fzf --zsh)

# Autojump (j)
[ -f "$HOMEBREW_PREFIX/etc/profile.d/autojump.sh" ] && . "$HOMEBREW_PREFIX/etc/profile.d/autojump.sh"


# if you want to customize everything under this line, just make sure you
# have a `~/.cointracker-custom-zshrc` with your customizations.

# no shared history between shells
setopt no_share_history
# Quick alias for mise
alias m=mise
# Quick alias to run mise tasks
alias ll="ls -lah"
alias gs="git status"
alias ga="git add ."
alias gc="git commit"
alias gp="git push"
alias v="code ."
alias mr='mise r'
alias v=vim
alias make=gmake
alias ggg='git checkout master && git pull origin'
alias dbu='alembic upgrade head'
alias beu='mise install && uv sync'
alias feu='mise install && bun i'
export MISE_EXPERIMENTAL=true

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
