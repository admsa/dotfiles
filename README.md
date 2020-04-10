# dotfiles
Vim dotfiles

.zshrc configurations
```
# export term=screen-256color
# alias tmux='tmux -2'
export term=xterm-256color

# alias for tmux attach session
function tmuxa() {
  tmux attach-session -t $1
}
```
