
if has('vim_starting')
	if &compatible
		set nocompatible
	endif
	set runtimepath+=~/.vim/bundle/neobundle.vim
endif

   call neobundle#begin(expand('~/.vim/bundle/'))
   NeoBundleFetch 'Shougo/neobundle.vim'

"日本語
NeoBundle 'vim-jp/vimdoc-ja'

"シングルクオートとダブルクオートの入れ替え
"cs現在のクオート変換後のクオート
"例) cs"' ダブルクオートからシングルクオートへの変換
NeoBundle 'surround.vim'

"プラグイン管理
"テーマ
"カラースキーム
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'tomasr/molokai'
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'itchyny/landscape.vim'
NeoBundle 'jpo/vim-railscasts-theme'
NeoBundle 'miyakogi/seiya.vim' "半透明じゃないカラースキームを半透明にする
NeoBundle 'osyo-manga/vim-over' "置換ハイライトとプレビュー

NeoBundle 'Shougo/vimproc',{
			\ 'build': {
			\ 'windows': 'make -f make_mingw32.mak',
			\ 'cygwin': 'make -f make_cygwin.mak',
			\ 'mac': 'make -f make_mac.mak',
			\ 'unix': 'make -f make_unix.mak',
			\ }
			\}

NeoBundle 'Shougo/vimshell'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/unite-outline'
NeoBundle 'Shougo/vimfiler'
NeoBundle 'Shougo/unite-build'
NeoBundle 'ujihisa/unite-colorscheme'
NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'sirtaj/vim-openscad'
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'osyo-manga/unite-quickfix'

"ソースとヘッダーとの行来
NeoBundle 'vim-scripts/a.vim'

"コメントアウト
NeoBundle 'tyru/caw.vim'

NeoBundle 'vim-jp/cpp-vim'
NeoBundle 'kana/vim-operator-user'
NeoBundle 'rhysd/vim-clang-format'
NeoBundle 'hewes/unite-gtags'
NeoBundleLazy 'octol/vim-cpp-enhanced-highlight', {'autoload':{'filetypes':['cpp']}}
NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'Rip-Rip/clang_complete'

"変数の型の確認
NeoBundle "osyo-manga/vim-snowdrop" , { 'autoload' : { 'filetypes' : 'cpp' } }

NeoBundle 'itchyny/lightline.vim'


call neobundle#end()







