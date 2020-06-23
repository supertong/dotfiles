# dotfiles
dotfiles for myself

## ZSH
* Install zsh `brew install zsh`
* Install oh-my-zsh
* Symlink .zshrc `ln -s ~/Git/dotfiles/zsh/.zshrc ~`
* Install (p10k theme)[https://github.com/romkatv/powerlevel10k#meslo-nerd-font-patched-for-powerlevel10k] `git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k`
* Install font `p10k configure`

## Tmux
* Install tmux `brew install tmux`
* Set Iterm2 starup text as `tmux ls && read tmux_session && tmux attach -t ${tmux_session:-default} || tmux new -s ${tmux_session:-default}`
* Install reattach-to-user-namespace `brew install reattach-to-user-namespace`
* Symlink .tmux.conf `ln -s ~/Git/dotfiles/tmux/.tmux.conf .`


## Iterm2
* Import `profile.json`
* Import color theme `base16-solarflare.dark.256.itermcolors`

