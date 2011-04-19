syntax on
set expandtab
set shiftwidth=4
set tabstop=4
set smarttab

filetype plugin on
set ofu=syntaxcomplete#Complete
highlight Pmenu ctermbg=238 gui=bold
"let g:SuperTabDefaultCompletionType = "<C-X><C-O>"
let g:SuperTabDefaultCompletionType = "context"
set completeopt=longest,menuone


"YankRing
nnoremap <silent> <F11> :YRShow<CR>

set lbr
set tw=500

set ai "Auto indent
set si "Smart indet
set wrap
set number

let mapleader = "²"
let g:mapleader = "²"

autocmd FileType php set omnifunc=phpcomplete#CompletePHP

"colorscheme wombat
colorscheme desert256

map <F2><left> :tabp<cr>
map <F2><right> :tabn<cr>

let php_sql_query=1
let php_htmlInStrings=1
let php_noShortTags=1

"Php doc
inoremap <C-P> <ESC>:call PhpDocSingle()<CR>i 
nnoremap <C-P> :call PhpDocSingle()<CR> 
vnoremap <C-P> :call PhpDocRange()<CR>

"Tab autocompletion
"function MyTabOrComplete()
"    let col = col('.')-1
"    if !col || getline('.')[col-1] !~ '\k'
"        return "\<tab>"
"    else
"        return "\<C-N>"
"    endif
"endfunction

" inoremap <Tab> <C-R>=MyTabOrComplete()<CR>
" run file with PHP CLI (CTRL-M)
:autocmd FileType php noremap <C-M> :w!<CR>:!/usr/bin/php %<CR>

" PHP parser check (CTRL-L)
:autocmd FileType php noremap <C-L> :!/usr/bin/php -l %<CR>

" Run PHPunit in same directory
:autocmd FileType php noremap <C-K> :lcd %:p:h<CR>:w!<CR>:!/usr/bin/phpunit %<CR>

set tags=tags

set scrolloff=999
