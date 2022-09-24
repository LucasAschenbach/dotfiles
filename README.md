# dotfiles

## Setup

1. Initialize git repository
```
git clone --bare git@github.com:lucasaschenbach/dotfiles.git $HOME/.cfg
```
2. Create alias for working with repository
```
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
```
3. Pull files
```
config checkout
```
4. Hide untracked files in git status report
```
config config --local status.showUntrackedFiles no
```

## Installations

- zsh
- [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh)
- [zoxide](https://github.com/ajeetdsouza/zoxide)
- [ranger](https://github.com/ranger/ranger)
- highlight
- [neovim](https://github.com/neovim/neovim)
- [vim-plug](https://github.com/junegunn/vim-plug)
- [tmux](https://github.com/tmux/tmux)
- [tmp](https://github.com/tmux-plugins/tpm)
