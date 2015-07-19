
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

