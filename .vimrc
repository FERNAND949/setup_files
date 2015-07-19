
" プラグインを読み込む
runtime! userautoload/vimrc_init/plugins.vim

" プラグインの設定を読み込む
runtime! userautoload/plugins/*.vim

" 以下setやhiglight,mapなどの設定
runtime! userautoload/vimrc_init/basic.vim
runtime! userautoload/vimrc_init/color.vim
runtime! userautoload/vimrc_init/mapping.vim

