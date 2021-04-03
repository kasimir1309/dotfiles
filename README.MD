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
ln -s ../.dotfiles/vifm vifm
```


# Vifm scripts
```bash
cd ~/.dotfiles/vifm/scripts
chmod +x docx2txt.pl
chmod +x vifmimg
chmod +x vifmrun
```

# Python scripts ...
that should be installed
```
pip3 install xlsx2csv ueberzug
```

# Pakete installieren mit Apt
```bash
sudo apt install ffmpegthumbnailer ffmpeg mplayer
```

#Call command in nvim
Install all server you will use in vim
```
:CocInstall coc-json coc-tslint-plugin coc-tsserver coc-angular coc-snippets coc-emmet coc-phpls coc-python coc-prettier
```
