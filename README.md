# dotfiles

## Setup

1. Initialize git repository
```
git clone --bare git@github.com:lucasaschenbach/dotfiles.git $HOME/.cfg
```
2. Pull files
```
config checkout
```
3. Hide untracked files in git status report
```
config config --local status.showUntrackedFiles no
```

