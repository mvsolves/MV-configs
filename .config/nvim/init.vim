source $HOME/.config/nvim/vim-plug/plugins.vim

"Nvim setup
syntax on
" colorscheme materialbox 
colorscheme jellybeans 

set number "Enable line number
highlight LineNr ctermfg=black ctermbg=grey
set numberwidth=4 "Tighten the line number width

set noshowcmd "hide the commands
set noshowmode "hide the --INSERT--
set cmdheight=1

set timeoutlen=1000 "For mapping delays,
set ttimeoutlen=0 "used for key code delays

" Enable folds to be automatically saved
autocmd BufWinLeave ?* silent! mkview!
autocmd BufWinEnter ?* silent! loadview

" Rename tmux window to current file. Rename to 'zsh' when quitting vim 
autocmd BufReadPost,FileReadPost,BufNewFile * call system("tmux rename-window " . expand("%"))
autocmd VimLeave * call system("tmux rename-window zsh")

" Changes colorscheme only on .css file extensions
" BufReadPost *.css colorscheme default

" Turns ejs files to follow the html syntax
au BufNewFile,BufRead *.ejs set filetype=html


" Contains MV custom snippets
source $HOME/.snippets/snippets.vim


"Plug installer
call plug#begin()
Plug 'mvsolves/MV-pairs'

Plug 'vim-scripts/ScrollColors'

" Run Unix commands in vim
Plug 'christoomey/vim-run-interactive'

Plug 'numToStr/Comment.nvim'
Plug 'nvim-lualine/lualine.nvim'

Plug 'rhysd/devdocs.vim'
Plug 'tpope/vim-surround'

Plug 'nvim-tree/nvim-tree.lua'

" Html/css tools
Plug 'mattn/emmet-vim'

" More support for ctags
Plug 'ludovicchabant/vim-gutentags'

" Completion
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-nvim-lua'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'


Plug 'vimwiki/vimwiki'
Plug 'ap/vim-css-color'
Plug 'rafi/awesome-vim-colorschemes'

Plug 'sheerun/vim-polyglot'

" Language server
Plug 'neovim/nvim-lspconfig'

call plug#end()





lua require('mvsolves')

" Vimwiki plugin setup
let g:vimwiki_list = [{'path':'~/Documents/vimwiki','syntax':'markdown','ext':'.md'}]

" Emmit-vim setup
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
