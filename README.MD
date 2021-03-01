# Dotfiles

## Checkout the repo

```
cd ~/
git clone git@github.com:kasimir1309/dotfiles.git
mv dotfiles .dotfiles

```

## Symbolic links

```bash
cd ~/
ln -s .dotfiles/.tmux.conf .tmux.conf
ln -s .dotfiles/.zshrc .zshrc
ln -s .dotfiles/.fzf.zsh .fzf.zsh

cd ~/.config/
ln -s ../.dotfiles/nvim nvim
```
