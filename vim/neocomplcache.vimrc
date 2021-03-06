let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_auto_completion_start_length = 2

" tab auto complete snippets
imap <Tab> <Plug>(neosnippet_expand_or_jump)
smap <Tab> <Plug>(neosnippet_expand_or_jump)
xmap <Tab> <Plug>(neosnippet_expand_target)

" tab to complete
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n><Esc>a" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"

" use my snippets
let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'

" recognize f,
let g:neosnippet#enable_snipmate_compatibility = 1

" disable defalut neosnippets
let g:neosnippet#disable_runtime_snippets = { "_": 1, }

" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplcache#close_popup() . "\<CR>"
endfunction
