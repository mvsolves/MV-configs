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
Plug 'mvsolves/MV-pairs'

" Run Unix commands in vim
Plug 'christoomey/vim-run-interactive'

" Add comments
Plug 'numToStr/Comment.nvim'

" Statusbar
Plug 'nvim-lualine/lualine.nvim'

" Add braces etc around specified text
Plug 'tpope/vim-surround'

" File browser
Plug 'nvim-tree/nvim-tree.lua'

" Html/css
Plug 'mattn/emmet-vim'
Plug 'ap/vim-css-color'

" Language server
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-nvim-lua'
Plug 'hrsh7th/cmp-nvim-lsp'

" Auto update Vim buffer after changes made in another app
Plug 'djoshea/vim-autoread'

" Notes
Plug 'vimwiki/vimwiki'

" Syntax highlighting (change for Treesitter?)
Plug 'sheerun/vim-polyglot'

" Colorscheme packs
Plug 'rafi/awesome-vim-colorschemes'
Plug 'vim-scripts/ScrollColors'

call plug#end()











lua require('mvsolves')

" Vimwiki plugin setup
let g:vimwiki_list = [{'path':'~/Documents/vimwiki','syntax':'markdown','ext':'.md'}]

" Emmit-vim setup
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
