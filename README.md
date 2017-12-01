# dotfiles
dotfiles for myself

## ZSH
* Install zsh `brew install zsh`
* Install oh-my-zsh
* Symlink .zshrc `ln -s ~/Git/dotfiles/zsh/.zshrc ~`

## Tmux
* Install tmux `brew install tmux`
* Set Iterm2 starup text as `tmux ls && read tmux_session && tmux attach -t ${tmux_session:-default} || tmux new -s ${tmux_session:-default}`
* Install reattach-to-user-namespace `brew install reattach-to-user-namespace`
* Symlink .tmux.conf `ln -s ~/Git/dotfiles/tmux/.tmux.conf .`


## Iterm2
* Install theme at `https://github.com/chriskempson/base16-iterm2/blob/master/base16-solarflare.dark.256.itermcolors`
