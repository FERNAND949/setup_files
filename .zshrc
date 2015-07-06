
# ------------------------------
# General Settings
# ------------------------------
export EDITOR=vim        # エディタをvimに設定
export LANG=ja_JP.UTF-8  # 文字コードをUTF-8に設定
export KCODE=u           # KCODEにUTF-8を設定
export AUTOFEATURE=true  # autotestでfeatureを動かす

setopt no_beep           # ビープ音を鳴らさないようにする
setopt auto_cd           # ディレクトリ名の入力のみで移動する 
setopt auto_pushd        # cd時にディレクトリスタックにpushdする
setopt correct           # コマンドのスペルを訂正する
setopt prompt_subst      # プロンプト定義内で変数置換やコマンド置換を扱う
setopt notify            # バックグラウンドジョブの状態変化を即時報告する

### Complement ###
autoload -U compinit; compinit # 補完機能を有効にする
setopt auto_list               # 補完候補を一覧で表示する(d)alias tmux="TERM=screen-256color-bce tmux"
setopt auto_menu               # 補完キー連打で補完候補を順に表示する(d)
setopt list_packed             # 補完候補をできるだけ詰めて表示する
setopt list_types              # 補完候補にファイルの種類も表示する
setopt auto_param_slash        # ディレクトリ名の補完で末尾の / を自動的に付加し、次の補完に備える
setopt complete_in_word        # 語の途中でもカーソル位置で補完
bindkey "^[[Z" reverse-menu-complete  # Shift-Tabで補完候補を逆順する("\e[Z"でも動作する)
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' # 補完時に大文字小文字を区別しない

### History ###
HISTFILE=~/.zsh_history   # ヒストリを保存するファイル
HISTSIZE=10000            # メモリに保存されるヒストリの件数
SAVEHIST=10000            # 保存されるヒストリの件数
setopt bang_hist          # !を使ったヒストリ展開を行う(d)
setopt extended_history   # ヒストリに実行時間も保存する
setopt hist_ignore_dups   # 直前と同じコマンドはヒストリに追加しない
setopt share_history      # 他のシェルのヒストリをリアルタイムで共有する
setopt hist_reduce_blanks # 余分なスペースを削除してヒストリに保存する

# cdr, add-zsh-hook を有効にする
autoload -Uz add-zsh-hock
autoload -Uz chpwd_recent_dirs cdr add-zsh-hook
 
 # cdr の設定
zstyle ':completion:*' recent-dirs-insert both
zstyle ':chpwd:*' recent-dirs-max 500
zstyle ':chpwd:*' recent-dirs-default true
zstyle ':chpwd:*' recent-dirs-file "$HOME/.cache/shell/chpwd-recent-dirs"
zstyle ':chpwd:*' recent-dirs-pushd true


# すべてのヒストリを表示する
function history-all { history -E 1 }

# エイリアス
alias tmux-copy='tmux save-buffer - | pbcopy'
alias vimrc='vim ~/.vimrc'
alias zshrc='vim ~/.zshrc'
alias tmux.conf='vim ~/.tmux.conf'

# ------------------------------
# Look And Feel Settings
# ------------------------------
### Ls Color ###
# 色の設定
# export LSCOLORS=Cxfxcxdxbxegedabagacad
# 補完時の色の設定
export LS_COLORS='di=33:ln=05:ex=31'
# ZLS_COLORSとは？
export ZLS_COLORS=$LS_COLORS
# lsコマンド時、自動で色がつく(ls -Gのようなもの？)
export CLICOLOR=true
# 補完候補に色を付ける
zstyle ':completion:*:default' list-colors 'di=33' 'ln=35' 'ex=31'

alias ls="ls --color"

### Prompt ###
# プロンプトに色を付ける
autoload -U colors; colors

# プロンプトの設定
local Default=$'%{\e[1;m%}'
local Bold=$'%{\e[1;01m%}'
local Green=$'%{\e[1;32m%}'
local Yello=$'%{\e[1;33m%}'
local Blue=$'%{\e[1;34m%}'
local Magenta=$'%{\e[1;35m%}'
local Cyan=$'%{\e[1;36m%}'
local Red=$'%{\e[1;31m%}'


# 一般ユーザ時
tmp_prompt=$Bold"%n%# %{${reset_color}%}"
tmp_prompt2=$Bold"%n%#  %{${reset_color}%}"
tmp_rprompt=$Blue'[%~]'
tmp_sprompt="%{${fg[yellow]}%}%r is correct? [Yes, No, Abort, Edit]:%{${reset_color}%}"

# rootユーザ時(太字にし、アンダーバーをつける)
if [ ${UID} -eq 0 ]; then
  tmp_prompt="%B%U${tmp_prompt}%u%b"
  tmp_prompt2="%B%U${tmp_prompt2}%u%b"
  tmp_rprompt="%B%U${tmp_rprompt}%u%b"
  tmp_sprompt="%B%U${tmp_sprompt}%u%b"
fi


PROMPT=$tmp_prompt    # 通常のプロンプト
PROMPT2=$tmp_prompt2  # セカンダリのプロンプト(コマンドが2行以上の時に表示される)
RPROMPT=$tmp_rprompt  # 右側のプロンプト
SPROMPT=$tmp_sprompt  # スペル訂正用プロンプト

# goの設定
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin


# pecoの設定の読み込み
[[ -e ~/peco.zsh ]] && source ~/peco.zsh


#tmux起動
[[ -z "$TMUX" && ! -z "$PS1" ]] && tmux -2

source /opt/ros/indigo/setup.zsh




