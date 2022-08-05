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

