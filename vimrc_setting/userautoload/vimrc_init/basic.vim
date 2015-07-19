
if has('conceal')
	set conceallevel=2 
endif

"バックアップをしない
set nobackup
"新しい行のインデントを現在と同じにする
" set autoindent
"いい感じでインデントをしてくれる
set smartindent
"行番号を表示
set nu
"相対行を表示
set relativenumber
"バックスペースを有効
set backspace=indent,eol,start
"バックアップを作らない
set nowritebackup
"スワップファイルを作らない
set noswapfile
"タイプ途中のコマンドを下に表示
set showcmd
"コマンドライン補完を拡張
set wildmenu
"移動コマンドを使用した時行頭に移動しない
set nostartofline
"常にステータスラインを表示
set laststatus=2
"マウスを有効化
set mouse=a
"コマンドラインの高さ
set cmdheight=3
"同じ括弧が入力された時対応する括弧を表示
set showmatch
"行を強調
set cursorline
"保存されてないファイルがあるときvimを終了すると保存の確認を行う
set confirm
"他で書き換えたら自動で読みなおす
set autoread
"ルーラーを表示
set ruler
"現在のモードを表示
set showmode
"対応括弧に<>を追加
set matchpairs& matchpairs+=<:>
"インクリメンタルサーチ
set incsearch
"ハイライト
set hlsearch
"クリップボードの共有
set clipboard=unnamed,autoselect
"c言語のインデント
set cinoptions+=:0,g0
set syntax=cpp11
" プレビュー非表示
set completeopt=menuone

set term=screen-256color
set background=dark

" 補完時に共通部分まで出す
set wildmode=longest:full,full

set encoding=utf-8
scriptencoding utf-8
filetype plugin on
filetype indent on

syntax on
