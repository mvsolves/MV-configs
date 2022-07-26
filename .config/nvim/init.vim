source $HOME/.config/nvim/vim-plug/plugins.vim

"Nvim setup
syntax on
colorscheme industry

" Changes colorscheme only on .css file extensions
" BufReadPost *.css colorscheme default

set number "Enable line number
highlight LineNr ctermfg=black ctermbg=grey
set numberwidth=4 "Tighten the line number width

set noshowcmd "hide the commands
set noshowmode "hide the --INSERT--

set timeoutlen=1000 "For mapping delays,
set ttimeoutlen=0 "used for key code delays

" Enable folds to be automatically saved
autocmd BufWinLeave ?* silent! mkview!
autocmd BufWinEnter ?* silent! loadview

"Plug installer
call plug#begin()
Plug 'preservim/nerdtree'
Plug 'jiangmiao/auto-pairs'

Plug 'sheerun/vim-polyglot'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'itchyny/lightline.vim'
Plug 'ap/vim-css-color'
Plug 'tpope/vim-commentary'
Plug 'vimwiki/vimwiki'
Plug 'mattn/emmet-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

"Lightline plugin setup
let g:lightline = {
			\ 'colorscheme': 'one',
			\ 'active': {
			\ 		'left': [['mode'],['filename']],
			\			'right': [['percent'],['lineinfo']]
			\ },
			\ }

"Vimwiki plugin setup
let g:vimwiki_list = [{'path':'~/Documents/vimwiki','syntax':'markdown','ext':'.md'}]

