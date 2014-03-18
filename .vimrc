"Set Syntax highlighting to on
syntax on

"Set color scheme
colorscheme darkblue

"Toggle line numbers with ctrl-n
nmap <C-N> :set invnumber<CR>

"Toggle paste with ctrl-p
nmap <C-P> :set invpaste<CR>

"Toggle highlighting of search terms with ctrl-h
nmap <C-H> :set hlsearch!<CR>

"Highlight comments in red
highlight Comment ctermfg=red

"Automatically reload vimrc on change
au BufWritePost .vimrc so ~/.vimrc

" highlight trailing whitespace
highlight TrailingWhiteSpace ctermbg=red ctermfg=white
match TrailingWhiteSpace / \+$/


"Defaults
set number
set expandtab
set tabstop=4
set shiftwidth=4
set statusline=\ [%f%*]\ %y\ %=[%P:\ ln\ %l/%L]\ [col\=%c]\
set laststatus=2
