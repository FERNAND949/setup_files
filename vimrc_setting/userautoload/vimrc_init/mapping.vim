
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
