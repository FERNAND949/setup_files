#!/bin/sh

sudo apt-get update

sudo apt-get install -y aptitude
sudo aptitude install -y gnome-session-flashback
sudo aptitude install -y compizconfig-settings-manager

sudo aptitude install -y ncurses-dev
mkdir ~/tmp
cd ~/tmp
wget http://jaist.dl.sourceforge.net/sourceforge/zsh/zsh-5.0.7.tar.gz
tar zxvf zsh-5.0.7.tar.gz
cd zsh-5.0.7
./configure
make
sudo make isntall
cd ~

wget -q https://www.ubuntulinux.jp/ubuntu-ja-archive-keyring.gpg -O- | sudo apt-key add -
wget -q https://www.ubuntulinux.jp/ubuntu-jp-ppa-keyring.gpg -O- | sudo apt-key add -
sudo wget https://www.ubuntulinux.jp/sources.list.d/saucy.list -O /etc/apt/sources.list.d/ubuntu-ja.list
sudo aptitude update

sudo aptitude install -y fcitx fcitx-mozc fcitx-libs-qt5 fcitx-frontend-qt5
gsettings set org.gnome.settings-daemon.plugins.keyboard active false

sudo aptitude install -y build-essential
sudo aptitude install -y cmake
sudo aptitude install -y freeglut3 freeglut3-dev
sudo aptitude install -y libxmu-dev libxi-dev
LANG=C xdg-user-dirs-gtk-update

sudo aptitude remove -y unity-webapps-common xul-ext-unity xul-ext-websites-integration

sudo aptitude install -y git git-core git-doc git-gui
sudo aptitude install -y wget

cd ~/tmp
wget http://downloads.sourceforge.net/tmux/tmux-1.9a.tar.gz
tar zxf tmux-1.9a.tar.gz
cd tmux-1.9a
./configure
make
sudo make install
cd ~

wget https://go.googlecode.com/files/go1.2rc2.linux-amd64.tar.gz
sudo tar zxvf ~/go1.2rc2.linux-amd64.tar.gz -C /usr/local
go get github.com/peco/peco/cmd/peco




