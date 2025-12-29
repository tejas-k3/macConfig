# ⌨️ Development Shortcuts Reference

A practical shortcut cheat sheet for macOS development using:
- macOS
- iTerm2
- tmux
- zsh

---

## 1️⃣ macOS (System-wide)

### Window & App Management
| Shortcut | Action |
|-------|------|
| `Cmd + Space` | Spotlight search |
| `Cmd + Tab` | Switch apps |
| `Cmd + ~` | Switch windows of same app |
| `Cmd + H` | Hide current app |
| `Cmd + Q` | Quit app |
| `Cmd + W` | Close window |
| `Cmd + M` | Minimize window |

---

### Text Editing (Works almost everywhere)
| Shortcut | Action |
|-------|------|
| `Cmd + Left/Right` | Beginning / end of line |
| `Option + Left/Right` | Move by word |
| `Cmd + Delete` | Delete entire line |
| `Option + Delete` | Delete previous word |
| `Cmd + A` | Select all |
| `Cmd + C / V / X` | Copy / Paste / Cut |

---

### Screenshots
| Shortcut | Action |
|-------|------|
| `Cmd + Shift + 3` | Full screen |
| `Cmd + Shift + 4` | Selection |
| `Cmd + Shift + 5` | Screenshot toolbar |

---

## 2️⃣ iTerm2

### Tabs & Windows
| Shortcut | Action |
|-------|------|
| `Cmd + T` | New tab |
| `Cmd + N` | New window |
| `Cmd + W` | Close tab |
| `Cmd + Number` | Switch tabs |

---

### Panes (Splits)
| Shortcut | Action |
|-------|------|
| `Cmd + D` | Split vertically |
| `Cmd + Shift + D` | Split horizontally |
| `Cmd + ]` | Next pane |
| `Cmd + [` | Previous pane |

---

### Search & Copy
| Shortcut | Action |
|-------|------|
| `Cmd + F` | Find |
| `Cmd + Shift + F` | Find across panes |
| `Cmd + Shift + C` | Copy |
| `Cmd + Shift + V` | Paste |

---

### Misc
| Shortcut | Action |
|-------|------|
| `Cmd + K` | Clear screen |
| `Cmd + Enter` | Toggle full screen |
| `Cmd + ,` | Preferences |

---

## 3️⃣ tmux

> **Prefix key:** `Ctrl + B`

### Sessions
| Shortcut | Action |
|-------|------|
| `Prefix + d` | Detach session |
| `tmux ls` | List sessions |
| `tmux attach` | Attach session |
| `tmux new -s work` | New session with name work|
| `tmux a -t work` | Attach to session work|
| `tmux kill-session -t work` | Kill session work|

---

### Windows (Tabs)
| Shortcut | Action |
|-------|------|
| `Prefix + c` | New window |
| `Prefix + n` | Next window |
| `Prefix + p` | Previous window |
| `Prefix + ,` | Rename window |
| `Prefix + &` | Kill window |

---

### Panes (Splits)
| Shortcut | Action |
|-------|------|
| `Prefix + %` | Vertical split |
| `Prefix + "` | Horizontal split |
| `Prefix + Arrow Keys` | Move between panes |
| `Prefix + x` | Kill pane |

---

### Misc
| Shortcut | Action |
|-------|------|
| `Prefix + r` | Reload tmux config |
| `Prefix + ?` | List all shortcuts |

---

## 4️⃣ zsh (Shell Editing & Navigation)

### Cursor Movement
| Shortcut | Action |
|-------|------|
| `Ctrl + A` | Start of line |
| `Ctrl + E` | End of line |
| `Option + Left/Right` | Move by word |

---

### Editing
| Shortcut | Action |
|-------|------|
| `Ctrl + U` | Delete before cursor |
| `Ctrl + K` | Delete after cursor |
| `Ctrl + W` | Delete previous word |
| `Ctrl + Y` | Paste deleted text |
| `Ctrl + L` | Clear screen |

---

### History
| Shortcut | Action |
|-------|------|
| `Ctrl + R` | Reverse history search |
| `↑ / ↓` | Previous / next command |
| `!!` | Repeat last command |
| `!cmd` | Last command starting with `cmd` |

---

### Completion
| Shortcut | Action |
|-------|------|
| `Tab` | Autocomplete |
| `Tab Tab` | Show options |
| `Ctrl + Space` | Trigger completion (in some setups) |

---

## 🧠 Power Combos (Recommended)

### iTerm2 + tmux
- Use **iTerm2 for panes**
- Use **tmux for persistence**
- Detach tmux → close laptop → resume later

### zsh + History
- `Ctrl + R` → type a few chars → hit Enter
- Faster than retyping commands

---
