# ---------- PATH ----------
export PATH="/usr/local/bin:/opt/homebrew/bin:$PATH"

# ---------- PYENV ----------
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"

# ---------- PIPX ----------
export PATH="$HOME/.local/bin:$PATH"

# ---------- STARSHIP ----------
eval "$(starship init zsh)"

# ---------- ZSH UX ----------
autoload -Uz compinit
compinit

setopt autocd
setopt correct
setopt interactivecomments

# ---------- ALIASES ----------
alias ll="ls -lah"
alias gs="git status"
alias ga="git add ."
alias gc="git commit"
alias gp="git push"
alias v="code ."
alias py="python"

# ---------- FZF ----------
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
