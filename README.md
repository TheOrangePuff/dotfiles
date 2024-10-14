# My dotfiles :v:

## Install

Run the setup script:

```bash
curl -Lks https://raw.githubusercontent.com/TheOrangePuff/dotfiles/refs/heads/master/setup.sh | bin/bash
```

Or run the commands manually:

```bash
git clone --bare git@github.com:TheOrangePuff/dotfiles.git $HOME/.cfg
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
config checkout
```

If this fails due to untracked files being overwritten, you'll need to delete those files and then checkout the repo again.

## References

Atlassian's recommended way to store dotfiles: https://www.atlassian.com/git/tutorials/dotfiles

