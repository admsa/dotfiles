# dotfiles
Vim dotfiles

>zshrc configurations
```
# export term=screen-256color
# alias tmux='tmux -2'
export term=xterm-256color

# alias for tmux attach session
function tmuxa() {
  tmux attach-session -t $1
}
```

>Go Paths
```
export GOPATH=$HOME/goprojects
export PATH=$PATH:$GOPATH/bin

```
>Go SpaceVim

Add myconfig.vim to ~/.SpaceVim.d/autoload/
```
[options]
    bootstrap_after = "myconfig#after"

[[layers]]
name = 'lang#go'

[[custom_plugins]]
name = "mdempsky/gocode"
merged = false

[[custom_plugins]]
name = "mhartington/oceanic-next"
merged = false
```
