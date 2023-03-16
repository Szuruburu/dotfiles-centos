# DOTFILES
## Centos

#### Vimrc

Vundle. First go:
```bash
curl -sL https://rpm.nodesource.com/setup_10.x | sudo bash - && sudo yum install nodejs cmake python3-pip
```

and then:

```bash
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

#### Ranger
```bash
sudo pip3 install ranger-fm
```

Make config:
```bash
ranger --copy-config=all
```
