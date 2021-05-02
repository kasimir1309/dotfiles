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
# Pakete installieren mit Apt ```bash sudo apt install ffmpegthumbnailer ffmpeg mplayer ```
# Call command in nvim
Install all server you will use in vim
```
:CocInstall coc-json coc-tslint-plugin coc-tsserver coc-angular coc-snippets coc-emmet coc-phpls coc-python coc-prettier
```

# Nice shortcuts

| Shortcut | Description |
|----------|----------------------------------------------------------|
| leader+gs| Git status view                                          |
| leader+co| Git checkout for the current file in buffer              |
| leader+gl| Git log                                                  |
| leader+ff| Find file in current (sub)dirs (fuzzy)                   |
| leader+fg| File grep in Fuzzy teleskop                              |
| leader+a | An other file grep                                       |
| leader+fo| Format file in buffer                                    |
| Ctr+F    | Finds word below cursor                                  |
| leader+d | Insert jsdoc to a class var or function                  |
| leader+q | Quick quit                                               |
| leader+w | Quick write                                              |
| leader+wq| Quick write and quit                                     |
| leader+s | Return to start screen                                   |
| leader+k | Opens Shortcur file                                      |


# Change up/down navigation in teleskope
... to j and k.

Open the file
```
cd ~/.vim
./lua/telescope/mappings.lua
```

change the next and previos selection as follows:

```
      ["<C-j>"] = actions.move_selection_next,
      ["<C-k>"] = actions.move_selection_previous,
```
