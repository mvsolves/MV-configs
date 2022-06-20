source $HOME/.config/nvim/vim-plug/plugins.vim

syntax on
colorscheme abstract

let g:lightline = {
			\ 'colorscheme': 'one',
			\ 'active': {
			\			'right': [['lineinfo'], ['percent'], ['filetype']],
			\ },
			\ }

call plug#begin()
Plug 'preservim/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'sheerun/vim-polyglot'
Plug 'Yggdroot/indentLine'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'itchyny/lightline.vim'
call plug#end()
