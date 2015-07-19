
if has('conceal')
	set conceallevel=2 
endif

" 画面表示の設定
set nu 				"行番号を表示
set cursorline 			"行を強調
set laststatus=2		"常にステータスラインを表示
set relativenumber 		"相対行を表示
set ruler 			"ルーラーを表示
set showcmd 			"タイプ途中のコマンドを下に表示
set showmode 			"現在のモードを表示
set cmdheight=3 		"コマンドラインの高さ
set completeopt=menuone 	" プレビュー非表示

" カーソル移動関連の設定
set backspace=indent,eol,start  "バックスペースを有効
set scrolloff=8 		" 上下8行の視界を確保

" 検索/置換の設定
set incsearch 			"インクリメンタルサーチ
set hlsearch 			"ハイライト


" タブ/インデントの設定
set smartindent 		"いい感じでインデントをしてくれる
" set autoindent 			"新しい行のインデントを現在と同じにする

" ファイル処理関連
set nobackup 			"バックアップをしない
set nowritebackup 		"バックアップを作らない
set noswapfile 			"スワップファイルを作らない
set confirm 			"保存されてないファイルがあるときvimを終了すると保存の確認を行う
set autoread 			"他で書き換えたら自動で読みなおす


set wildchar=<C-Z>		" コマンドラインでTABで保存できる
set wildmenu 			"コマンドライン補完を拡張
set nostartofline 		"移動コマンドを使用した時行頭に移動しない
set mouse=a 			"マウスを有効化
set showmatch 			"同じ括弧が入力された時対応する括弧を表示
set matchpairs& matchpairs+=<:> "対応括弧に<>を追加
set clipboard=unnamed,autoselect "クリップボードの共有
set cinoptions+=:0,g0 		"c言語のインデント
set syntax=cpp11


set term=screen-256color
set background=dark

set wildmode=longest:full,full " 補完時に共通部分まで出す

set encoding=utf-8
scriptencoding utf-8
filetype plugin on
filetype indent on

syntax on







