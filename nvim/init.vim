
set hidden
set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
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
"
" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=50

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey


" == VIM PLUG ================================
call plug#begin('~/.vim/plugged')
"------------------------ COC ------------------------
" coc for tslinting, auto complete and prettier
"Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" coc extensions
let g:coc_global_extensions = ['coc-tslint-plugin', 'coc-tsserver', 'coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-yank', 'coc-prettier', 'coc-phpls', 'coc-python', 'coc-angular', 'coc-explorer', 'coc-snippets']
"------------------------ VIM TSX ------------------------
" by default, if you open tsx file, neovim does not show syntax colors
" vim-tsx will do all the coloring for jsx in the .tsx file
Plug 'ianks/vim-tsx'
"------------------------ VIM TSX ------------------------
" by default, if you open tsx file, neovim does not show syntax colors
" typescript-vim will do all the coloring for typescript keywords
Plug 'leafgarland/typescript-vim'
"------------------------ THEME ------------------------
" most importantly you need a good color scheme to write good code :D
Plug 'dikiaap/minimalist'

Plug 'morhetz/gruvbox'
Plug 'jremmen/vim-ripgrep'  " Grep for vim
Plug 'tpope/vim-fugitive'  " Git command support
Plug 'leafgarland/typescript-vim'  " Typescript highlighting
Plug 'vim-utils/vim-man'
Plug 'lyuts/vim-rtags'
Plug 'kien/ctrlp.vim'   "Control P file search
Plug 'mbbill/undotree'  "Shows a tree of local changes
Plug 'airblade/vim-gitgutter'  "Shows git changes at the left side

Plug 'norcalli/nvim-colorizer.lua'
Plug 'mattn/emmet-vim'  " Emmet html short cuts

Plug 'prettier/vim-prettier'  "Nicefy format

Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'vimwiki/vimwiki'  " Vim wiki plugin
Plug 'mhinz/vim-startify'  " Startpage for vim
Plug 'dyng/ctrlsf.vim'   " ag/grep in vim
Plug 'norcalli/nvim-colorizer.lua'  " Colors in css or scss files

"Plug 'diepm/vim-rest-console'  "Rest client

Plug 'baverman/vial'
Plug 'baverman/vial-http'

Plug 'christoomey/vim-tmux-navigator'
call plug#end()



" == VIMPLUG END ================================
" == AUTOCMD ================================
" by default .ts file are not identified as typescript and .tsx files are not
" identified as typescript react file, so add following
au BufNewFile,BufRead *.ts setlocal filetype=typescript
au BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx
" == AUTOCMD END ================================
"
"colorscheme gruvbox
set background=dark

if executable('rg')
    let g:rg_derive_root='true'
endif

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let mapleader = " "

let g:netrw_browse_split = 2
let g:netrw_banner = 0
let g:netrw_winsize = 25

let g:ctrlp_use_caching = 0
" Jup between two vertical windows
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

" Show historiy tree
nnoremap <leader>u :UndotreeShow<CR>

" Open current files window on left side
nnoremap <leader>vv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>


nnoremap <Leader>ps :Rg<SPACE>

" Resize vertical spitted window step wise
nnoremap <silent> <Leader>+ :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

fun! GoCoc()
    inoremap <buffer> <silent><expr> <TAB>
                \ pumvisible() ? "\<C-n>" :
                \ <SID>check_back_space() ? "\<TAB>" :
                \ coc#refresh()

    inoremap <buffer> <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
    inoremap <buffer> <silent><expr> <C-space> coc#refresh()

    " GoTo code navigation.
    nmap <buffer> <leader>gd <Plug>(coc-definition)
    nmap <buffer> <leader>gy <Plug>(coc-type-definition)
    nmap <buffer> <leader>gi <Plug>(coc-implementation)
    nmap <buffer> <leader>gr <Plug>(coc-references)
    nnoremap <buffer> <leader>cr :CocRestart
    nmap <buffer> <leader>gs :Gstatus<CR>
    nmap <buffer> <leader>gc :Git commit<CR>
    nmap <buffer> <leader>gb :Git blame<CR>
    nmap <buffer> <leader>gg :Gdiffsplit<CR>
endfun

fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

autocmd BufWritePre * :call TrimWhitespace()
autocmd FileType typescript :call GoCoc()
autocmd FileType cpp,cxx,h,hpp,c :call GoCoc()

nmap <leader>rt :!npm run test<CR>

" Snippets support
let g:UltiSnipsExpandTrigger="<c-s>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
" end snippet support
"
nmap <leader>gs :Gstatus<CR>
nmap <leader>gb :Git blame<CR>
nmap <leader>gl :Git log<CR>

"let mapleader = ","
colorscheme gruvbox
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gr <Plug>(coc-reference)

"""""""""""""""""""""""""""""""""""""""""""""
" Open coc explorer
""""""""""""""""""""""""""""""""""""""""""""
nmap <space>e :CocCommand explorer<CR>

" Use preset argument to open it
nmap <space>ed :CocCommand explorer --preset .vim<CR>
nmap <space>ef :CocCommand explorer --preset floating<CR>

" List all presets
nmap <space>el :CocList explPresets

" Explorer
nmap <space>e :CocCommand explorer<CR>
nmap <space>f :CocCommand explorer --preset floating<CR>
autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif

""""""""""""""""""""""""""""""""""""""""""""
" end explorer
"


" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)

inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'

" Prettier section

"/home/$USER/.nvm/versions/node/v12.16.3/bin/prettier
let g:prettier#exec_cmd_path = "~/.nvm/versions/node/v12.16.3/bin/prettier"


"autocmd TextChanged,InsertLeave *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync
"let g:prettier#autoformat = 1

"runs prettier, to niceify file in buffer
nmap <Leader>fo <Plug>(Prettier)


set termguicolors " activate colors in css, scss, sass files

nmap <leader>a :CtrlSF -R ""<Left>
nmap <leader>A <Plug>CtrlSFCwordPath -W<CR>

nmap <C-F> :CtrlSF -R ""<Left>
nmap <C-f> <Plug>CtrlSFCwordPath -W<CR>

nmap <C-h> :sp ~/Dokumente/vimwiki/vim_keys.md<CR>

lua require'plug-colorizer'

nmap <leader>di :vertical Gdiff<CR>  " Open diff to current file


nmap <M-l> :vertical resize+5<CR>  " resize the current window to left
nmap <M-h> :vertical resize-5<CR>  " resize the current window to left
nmap <M-j> :resize+5<CR>  " Resize the current window to bottom
nmap <M-k> :resize-5<CR>  " Resize the current window to top

set relativenumber  " Numbers are counted vom the postiion you cursor is in file
" To switch to normal numbers use :number
"

"set statusline=%<%f\ %h%m%r%{kite#statusline()}%=%-14.(%l,%c%V%)\ %P
"set laststatus=2  " always display the status line
"
nmap <C-j> :VialHttp<CR>
