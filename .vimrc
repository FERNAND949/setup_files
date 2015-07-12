 

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
nnoremap <silent> <Leader>m :OverCommandLine<CR>


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
nmap <Leader>c <Plug>(caw:i:toggle)
vmap <Leader>c <Plug>(caw:i:toggle)


NeoBundle 'vim-jp/cpp-vim'
NeoBundle 'kana/vim-operator-user'

NeoBundle 'rhysd/vim-clang-format'
let g:clang_format#command = "/usr/bin/clang-format-3.4"
let g:clang_format#auto_format = 1
let g:clang_format#style_options = {
            \ "AccessModifierOffset" : -4,
            \ "AllowShortIfStatementsOnASingleLine" : "true",
            \ "AlwaysBreakTemplateDeclarations" : "true",
            \ "AllowShortLoopsOnASingleLine" : "true",
            \ "AlignTrailingComments " : "false",
            \ "Standard" : "C++11",
	    \ "SpacesInAngles" : "true",
            \ "BreakBeforeBraces" : "Stroustrup"}

autocmd FileType c,cpp,objc nnoremap <buffer><Leader>cf :<C-u>ClangFormat<CR>
autocmd FileType c,cpp,objc vnoremap <buffer><Leader>cf :ClangFormat<CR>
" if you install vim-operator-user
autocmd FileType c,cpp,objc map <buffer><Leader>x <Plug>(operator-clang-format)
" Toggle auto formatting:
nmap <Leader>C :ClangFormatAutoToggle<CR>

NeoBundle 'hewes/unite-gtags'

" NeoBundle 'soramugi/auto-ctags.vim'
" let g:auto_ctags = 0 

NeoBundleLazy 'octol/vim-cpp-enhanced-highlight', {'autoload':{'filetypes':['cpp']}}

let g:seiya_auto_enable=1

let g:unite_split_rule = 'botright'
let g:unite_force_overwrite_statusline = 0

" grep 検索
nnoremap <silent> ,g  :<C-u>Unite grep:. -buffer-name=search-buffer<CR>

" unite grep に ag(The Silver Searcher) を使う
if executable('ag')
  let g:unite_source_grep_command = 'ag'
  let g:unite_source_grep_default_opts = '--nogroup --nocolor --column'
  let g:unite_source_grep_recursive_opt = ''
endif


let g:vimfiler_force_overwrite_statusline = 0


NeoBundle 'Shougo/neocomplete.vim'
if !exists('g:neocomplete#force_omni_input_patterns')
	let g:neocomplete#force_omni_input_patterns = {}
endif
let g:neocomplete#enable_auto_close_preview = 1
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#force_overwrite_completefunc = 1
let g:neocomplete#force_omni_input_patterns.c =
      \ '[^.[:digit:] *\t]\%(\.\|->\)\w*'
let g:neocomplete#force_omni_input_patterns.cpp =
      \ '[^.[:digit:] *\t]\%(\.\|->\)\w*\|\h\w*::\w*'
let g:neocomplete#force_omni_input_patterns.objc =
      \ '[^.[:digit:] *\t]\%(\.\|->\)\w*'
let g:neocomplete#force_omni_input_patterns.objcpp =
      \ '[^.[:digit:] *\t]\%(\.\|->\)\w*\|\h\w*::\w*'


NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'
let g:neosnippet#enable_snipmate_compatibility = 1
let g:neosnippet#snippets_directory = '~/vim/bundle/neosnippet-snippets/neosnippets/'

imap <expr><CR> neosnippet#expandable() <bar><bar> neosnippet#jumpable() ?
			\ "\<Plug>(neosnippet_expand_or_jump)" : "\<CR>"

imap <expr><TAB> neosnippet#jumpable() ? 
			\ "\<Plug>(neosnippet_expand_or_jump)"
			\: pumvisible() ? "\<C-n>" : "\<TAB>"

smap <expr><TAB> neosnippet#jumpable() ? 
			\"\<Plug>(neosnippet_expand_or_jump)"
			\: "\<TAB>"

if has('condeal')
	set conceallevel=2 concealcursor=1
endif


NeoBundle 'Rip-Rip/clang_complete'
let g:clang_user_option = '-std=c++11'
let g:clang_use_library = 1
let g:clang_complete_auto = 1
let g:clang_auto_select =  1
let g:clang_library_path = "/usr/lib/llvm-3.4/lib/libclang.so.1"


"変数の型の確認
NeoBundle "osyo-manga/vim-snowdrop" , { 'autoload' : { 'filetypes' : 'cpp' } }
let g:snowdrop#libclang_directory = "/usr/lib/llvm-3.3/lib/"
let g:snowdrop#libclang_file = "libclang.so"
let g:snowdrop#include_paths = {
	\	"cpp" : [
	\ 		"/usr/include/c++/4.8/",
	\		"/usr/include/eigen3/",
	\	]
	\ }
let g:snowdrop#command_options = {
			\   "cpp" : "-std=c++11",
			\}
let g:snowdrop#libclang#default_binding = "python"
let g:snowdrop#goto_definition_open_cmd = "edit"
let g:neocomplete#sources#snowdrop#enable = 1

NeoBundle 'itchyny/lightline.vim'
let g:lightline ={
			\'mode_map' : {'c' : 'NORMAL'},
			\'active': {
			\'left': [ [ 'mode', 'paste' ], [ 'fugitive', 'filename' ] ],
			\'right': [ [ 'lineinfo',  'syntastic' ],
			\[ 'percent' ],
			\[ 'fileformat', 'fileencoding', 'filetype' ] ],
			\},
			\'component_function': {
			\'modified': 'MyModified',
			\'readonly': 'MyReadonly',
			\'fugitive': 'MyFugitive',
			\'filename': 'MyFilename',
			\'fileformat': 'MyFileformat',
			\'filetype': 'MyFiletype',
			\'fileencoding': 'MyFileencoding',
			\'mode': 'MyMode'
			\},
			\}

function! MyModified()
	return &ft =~ 'help\|vimfiler\|gundo' ? '' : &modified ? '+' : &modifiable ? '' : '-'
endfunction

function! MyReadonly()
	return &ft !~? 'help\|vimfiler\|gundo' && &readonly ? 'x' : ''
endfunction

function! MyFilename()
	return ('' != MyReadonly() ? MyReadonly() . ' ' : '') .
	              \ (&ft == 'vimfiler' ? vimfiler#get_status_string() :
	              \  &ft == 'unite' ? unite#get_status_string() :
	              \  &ft == 'vimshell' ? vimshell#get_status_string() :
	              \ '' != expand('%:t') ? expand('%:t') : '[No Name]') .
	              \ ('' != MyModified() ? ' ' . MyModified() : '')
endfunction

function! MyFugitive()
	try
		if &ft !~? 'vimfiler\|gundo' && exists('*fugitive#head')
			return fugitive#head()
		endif
	catch
	endtry
	return ''
endfunction

function! MyFileformat()
	return winwidth(0) > 60 ? &fileformat : ''
endfunction

function! MyFiletype()
	return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype : 'no ft') : ''
endfunction

function! MyFileencoding()
	return winwidth(0) > 70 ? (strlen(&fenc) ? &fenc : &enc) : ''
endfunction

function! MyMode()
	return &ft == 'unite' ? 'Unite' :
				\&ft == 'vimfiler' ? 'VimFiler' :
				\&ft == 'vimshell' ? 'VimShell' :
				\winwidth(0) > 60 ? lightline#mode() : ''
endfunction


"更新時間の設定
"バッファの開き方
"水平分割 行数は10
"アニメーションの重みを設定
"quickfixへ出力
let g:quickrun_config = {
			\"_":{
			\"outputter" : "multi:buffer:quickfix",
			\"outputter/buffer/split" : "botright 10sp",
			\"runner" : "vimproc",
			\"runner/vimproc/updatetime" : 30,
			\"outputter/buffer/into" : 1,
			\}
			\}

call neobundle#end()

"全角表示
function! ZenkakuSpace()
	highlight ZenkakuSpace cterm=reverse ctermfg=DarkMagenta gui=reverse 
" 	guifg=DarkMagenta
endfunction

if has('syntax')
	augroup ZenkakuSpace
		autocmd!
		autocmd ColorScheme       * call ZenkakuSpace()
		autocmd VimEnter,WinEnter * match ZenkakuSpace /　/
	augroup END
	call ZenkakuSpace()
endif



" プログラム実行
autocmd BufNew,BufRead *.cpp map <Space>o <Esc> :QuickRun ./out <Return>
autocmd BufNew,BufRead *.py  map <Space>o <Esc> :!python % <Return>

" インデント設定
autocmd filetype python setlocal sw=4 sts=4 ts=4 et

" markdown読み込み
au BufRead,BufNewFile *.md set filetype=markdown

imap <C-j> <Down>
imap <C-k> <Up>
inoremap <C-h> <Left>
imap <C-l> <Right>
imap <C-S> <Nop>
imap <Del> <Nop>

" gtagsの設定
map <C-g> :Gtags 
map <C-h> :Gtags -f %<CR>
map <C-j> :GtagsCursor<CR>
map <C-n> :cn<CR>
map <C-p> :cp<CR>

" tabでの選択
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>"

nmap <C-s> <Nop>
nmap <C-z> <Nop>

"ノーマルモード
nnoremap s <Nop>
nnoremap sj 30j
nnoremap sk 30k
nnoremap sl 30l
nnoremap sh 30h
nnoremap <Esc><Esc> :noh<CR>

" tagの設定
" nnoremap <Space>t :vsp<CR> :exe("tjump ".expand('<cword>'))<CR>

" autocmd BufNew,BufRead *.cpp let g:auto_ctags = 1
" autocmd BufNew,BufRead *.h let g:auto_ctags = 1

nnoremap :w :update


" Uniteキーバインド
" fがファイル
" oがアウトライン
" bがビルド
" gがgrep
nnoremap [unite] <Nop>
nmap <Space>u [unite]
nmap <silent>[unite]f <Esc>:Unite file<Enter>
nmap <silent>[unite]o <ESC>:Unite -vertical -winwidth=40 outline<Return>
nmap <silent>[unite]b <Esc>:Unite build<Enter>
nmap <silent>[unite]g  :<C-u>Unite grep:. -buffer-name=search-buffer<CR>

nmap ZZ <Nop>
nmap ZQ <Nop>

" ビジュアルモード
" インデント
vnoremap <silent> > >gv
vnoremap <silent> < <gv


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

set t_Co=256

syntax on

" コメントの色を変える
autocmd ColorScheme * highlight Comment ctermfg=222
autocmd ColorScheme * highlight Function ctermfg=10
autocmd ColorScheme * highlight Type  ctermfg=220
autocmd ColorScheme * highlight StorageClass  ctermfg=12
autocmd ColorScheme * highlight Structure ctermfg=12
autocmd ColorScheme * highlight Typedef ctermfg=177

colorscheme landscape

let g:solarized_termtrans = 256
let g:molokai_original = 1
let g:rehash256 = 1









