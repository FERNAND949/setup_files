#!/bin/sh

echo "/usr/local/bin/zsh" >> /etc/shells
chsh
/usr/bin/zsh

sudo aptitude install -y vim-gnome
sudo aptitude install -y clang
sudo aptitude install -y nautilus-dropbox
sudo aptitude install -y pepperflashplugin-nonfree
sudo update-pepperflashplugin-nonfree --install
sudo aptitude install -y gnome-tweak-tool
sudo aptitude install -y compiz-plugins-extra
sudo aptitude install -y fonts-ipafont-gothic fonts-ipafont-mincho
sudo aptitude install -y davfs2
sudo aptitude install -y exuberant-ctags
sudo aptitude install -y gparted
sudo aptitude install -y gnuplot-x11
sudo aptitude install -y ntp
sudo aptitude install -y unrar
sudo aptitude install -y fontforge
sudo aptitude install -y fonts-inconsolata
sudo aptitude install -y clang-format-3.4
sudo aptitude install -y libclang-3.3-dev
sudo aptitude install -y libclang-3.4-dev
sudo aptitude install -y ssh


mkdir -p .vim/bundle
git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
cd ~

sudo aptitude install -y global
mkdir .vim/plugin
cp /usr/share/doc/global/examples/gtags.vim.gz ~/.vim/plugin/
cd ~/.vim/plugin/
gzip -d gtags.vim.gz
cd ~


