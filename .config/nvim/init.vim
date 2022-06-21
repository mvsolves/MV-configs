source $HOME/.config/nvim/vim-plug/plugins.vim

"Nvim setup
syntax on
colorscheme industry
set number "Enable line number
highlight LineNr ctermfg=black ctermbg=grey
set numberwidth=4 "Tighten the line number width
set noshowcmd "hide the commands
set noshowmode "hide the --INSERT--
set timeoutlen=1000 "For mapping delays,
set ttimeoutlen=0 "used for key code delays



"Lightline plugin setup
let g:lightline = {
			\ 'colorscheme': 'one',
			\ 'active': {
			\ 		'left': [['mode'],['filename']],
			\			'right': [['percent'],
			\								['lineinfo']]
			\ },
			\ }

call plug#begin()
Plug 'preservim/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'sheerun/vim-polyglot'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'itchyny/lightline.vim'
call plug#end()
