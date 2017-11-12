# arch-home

My Arch Linux Configuration files for:

* Vim
* ZSH
* Bash

Clone this repo and copy files to `~/`.

## Environment variables
```
    sudo ln -s ~/environment /etc/environment
```

## ZSH

```bash
    yaourt -S zsh oh-my-zsh-git
```

Set as default shell: https://wiki.archlinux.org/index.php/Command-line_shell#Changing_your_default_shell

```bash
    chsh -l
```

```bash
    chsh -s full-path-to-shell
```

## Vim

Install [Vundle](https://github.com/VundleVim/Vundle.vim).
```bash
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim    
```

Launch vim and run `:PluginInstall`

