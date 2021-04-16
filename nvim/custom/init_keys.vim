"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Leader key is space
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = " "

" Resize vertical spitted window step wise
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Snippets support
let g:UltiSnipsExpandTrigger="<c-s>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" Show historiy tree
nnoremap <leader>u :UndotreeShow<CR>

" Open current files window on left side
nnoremap <leader>vv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>

" Find an expression
nnoremap <Leader>ps :Rg<SPACE>

" Run tests with npm
nmap <leader>rt :!npm run test<CR>

" Git support
nmap <leader>gs :Neogit<CR>
nmap <leader>gb :Git blame<CR>
nmap <leader>gl :Git log<CR>

"runs prettier, to niceify file in buffer
nmap <Leader>fo <Plug>(Prettier)

nmap <leader>a :CtrlSF -R ""<Left>
nmap <leader>A <Plug>CtrlSFCwordPath -W<CR>

" Find word to type or the word below cursor
nmap <C-F> :CtrlSF -R ""<Left>
nmap <C-f> <Plug>CtrlSFCwordPath -W<CR>

" Open help
nmap <leader>k :sp ~/.dotfiles/nvim/custom/init_keys.vim<CR>

" Control P opens file search
nnoremap <C-p> <cmd>Telescope find_files<cr>

" Toggle undo tool with preview
nnoremap <F5> :MundoToggle<CR>

" Show vertical diff
nmap <leader>di :vertical Gdiff<CR>  " Open diff to current file

" Resize windows with ALT+hjkl keys
nmap <M-l> :vertical resize+5<CR>  " resize the current window to left
nmap <M-h> :vertical resize-5<CR>  " resize the current window to left
nmap <M-j> :resize+5<CR>  " Resize the current window to bottom
nmap <M-k> :resize-5<CR>  " Resize the current window to top

" Switch to next tab
map <tab> :bNext<CR>

" Insert jsdoc to a class var or function
nmap <leader>d :JsDoc<CR>

" Go to definition or show it in splut
nmap <silent> gd :call CocAction('jumpDefinition', 'split')<CR>
nmap <silent> gt :call CocAction('jumpDefinition', 'tabe')<CR>

" Checkout file from git repository before change
nmap <leader>co :! git checkout %<CR>

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" quick save or quit options
nmap <leader>q :q<CR>
nmap <leader>w :w<CR>
nmap <leader>wq :wq<CR>
