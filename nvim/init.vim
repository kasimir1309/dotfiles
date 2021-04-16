
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set spelllang=en_gb
set spell
set cmdheight=2 " Give more space for displaying messages.

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=50

set termguicolors " activate colors in css, scss, sass files

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c
set colorcolumn=80

" Numbers are counted vom the postiion you cursor is in file
set relativenumber

highlight ColorColumn ctermbg=0 guibg=lightgrey

colorscheme gruvbox

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Settings from external files
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
runtime custom/plugins.vim  " All plugins to load
runtime custom/init_coc.vim " Extra settings for coc
runtime custom/init_prettier.vim " Extra settings for prettier
runtime custom/init_keys.vim " Keyboard short cuts

" == AUTOCMD ================================
" by default .ts file are not identified as typescript and .tsx files are not
" identified as typescript react file, so add following
au BufNewFile,BufRead *.ts setlocal filetype=typescript
au BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx
" == AUTOCMD END ================================

set background=dark

if executable('rg')
    let g:rg_derive_root='true'
endif

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

lua require'plug-colorizer'



