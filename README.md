# .conf

```sh
git clone git@github.com:cinoss/dotconf.git ~/.conf
```

## Zsh

```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
rm ~/.zshrc
ln ~/.conf/.zshrc ~/
touch ~/.zshrc.local
```

## tmux

```sh
ln ~/.conf/.tmux.conf ~/
```

# Vim

```sh
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
ln ~/.conf/.vimrc ~/
ln ~/.conf/.vimrc.plug ~/
touch ~/.vimrc.local
```

```vim
:PlugInstall
```
