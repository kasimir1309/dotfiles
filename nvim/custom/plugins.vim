
" == VIM PLUG ================================
call plug#begin('~/.vim/plugged')
"------------------------ COC ------------------------
" coc for tslinting, auto complete and prettier
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
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
"Plug 'kien/ctrlp.vim'   "Control P file search
Plug 'mbbill/undotree'  "Shows a tree of local changes
Plug 'airblade/vim-gitgutter'  "Shows git changes at the left side

Plug 'norcalli/nvim-colorizer.lua'
Plug 'mattn/emmet-vim'  " Emmet html short cuts

" Make code prettier
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'angular', 'vue', 'yaml', 'html', 'php'] }

Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'vimwiki/vimwiki'  " Vim wiki plugin
Plug 'mhinz/vim-startify'  " Startpage for vim
Plug 'dyng/ctrlsf.vim'   " ag/grep in vim
Plug 'norcalli/nvim-colorizer.lua'  " Colors in css or scss files

Plug 'baverman/vial'
Plug 'baverman/vial-http'

" Help for navigate with tmux and vim
Plug 'christoomey/vim-tmux-navigator'
Plug 'airblade/vim-rooter'
Plug 'jremmen/vim-ripgrep'
Plug 'TimUntersberger/neogit'

" Javascipt docs
Plug 'heavenshell/vim-jsdoc', {
  \ 'for': ['javascript', 'javascript.jsx','typescript'],
  \ 'do': 'make install'
\}
Plug 'jose-elias-alvarez/nvim-lsp-ts-utils'

"Plugin for undoing steps with pre view
Plug 'simnalamburt/vim-mundo'

Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'rstacruz/vim-closer'  " Closes brackets for you
call plug#end()

" == VIMPLUG END ================================
