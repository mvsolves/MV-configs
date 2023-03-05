source $HOME/.config/nvim/vim-plug/plugins.vim

" Nvim setup
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


" ---- Plug installer -------------------------
call plug#begin()

" Syntax highlighting
Plug 'sheerun/vim-polyglot'

" Syntax formatting
Plug 'jose-elias-alvarez/null-ls.nvim'

" Language server
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'kabouzeid/nvim-lspinstall'
Plug 'williamboman/mason.nvim'
Plug 'neovim/nvim-lspconfig'

" Completion
Plug 'rafamadriz/friendly-snippets'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'folke/neodev.nvim'
Plug 'hrsh7th/nvim-cmp'
Plug 'L3MON4D3/LuaSnip'
Plug 'hrsh7th/cmp-path'
" Plug 'hrsh7th/cmp-buffer'
" Plug 'saadparwaiz1/cmp_luasnip'

" UI and display
Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-tree/nvim-tree.lua'
Plug 'ap/vim-css-color'

" Utility plugins
Plug 'numToStr/Comment.nvim'

" Notes
Plug 'vimwiki/vimwiki'

" Telescope
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-lua/plenary.nvim'

" Colorschemes
Plug 'rafi/awesome-vim-colorschemes'
Plug 'vim-scripts/ScrollColors'

call plug#end()


lua require('mvsolves')

" Vimwiki plugin setup
let g:vimwiki_list = [{'path':'~/Documents/vimwiki','syntax':'markdown','ext':'.md'}]

" Emmit-vim setup
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
