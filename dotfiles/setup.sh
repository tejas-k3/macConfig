#!/usr/bin/env bash
set -e

echo "Starting full Mac development setup..."

# ----------------------------
# 1. Install Homebrew
# ----------------------------
if ! command -v brew >/dev/null 2>&1; then
  echo "Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo "Homebrew already installed"
fi

# Ensure brew is in PATH (Intel + Apple Silicon)
if [[ -x /opt/homebrew/bin/brew ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
elif [[ -x /usr/local/bin/brew ]]; then
  eval "$(/usr/local/bin/brew shellenv)"
fi

# ----------------------------
# 2. Install Brew packages
# ----------------------------
echo "Installing packages from Brewfile..."
brew bundle --file="$(pwd)/Brewfile"

# ----------------------------
# 3. Create config directories
# ----------------------------
mkdir -p ~/.config

# ----------------------------
# 4. Symlink dotfiles
# ----------------------------
echo "Linking config files..."

ln -sf "$(pwd)/.zshrc" ~/.zshrc
ln -sf "$(pwd)/.gitconfig" ~/.gitconfig
ln -sf "$(pwd)/.tmux.conf" ~/.tmux.conf
ln -sf "$(pwd)/.config/starship.toml" ~/.config/starship.toml

# ----------------------------
# 5. Python setup
# ----------------------------
echo "Setting up Python..."

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

if command -v pyenv >/dev/null 2>&1; then
  pyenv install -s 3.12.1
  pyenv global 3.12.1
fi

# ----------------------------
# 6. pipx tools
# ----------------------------
if command -v pipx >/dev/null 2>&1; then
  pipx ensurepath
  pipx install --force black
  pipx install --force ruff
  pipx install --force ipython
fi

# ----------------------------
# 7. iTerm2 notice
# ----------------------------
echo ""
echo "IMPORTANT:"
echo "Open iTerm2 → Settings → General → Preferences"
echo "Enable: Load preferences from custom folder"
echo "Set it to: $(pwd)/iterm2"
echo ""

echo "Setup complete. Restart your terminal."
