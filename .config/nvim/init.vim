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

" Enable folds to be automatically saved
autocmd BufWinLeave ?* silent! mkview!
autocmd BufWinEnter ?* silent! loadview

" Changes colorscheme only on .css file extensions
" BufReadPost *.css colorscheme default




" MV auto-pairs
inoremap { {}<ESC>ha
inoremap [ []<ESC>ha
inoremap ( ()<ESC>ha
inoremap ' ''<ESC>ha
inoremap " ""<ESC>ha
inoremap /*  /*  */<ESC>hhha
" When pressing enter, tabs in between
inoremap {<Enter> {<Enter>}<Esc>O
inoremap [<Enter> [<Enter>]<Esc>O<tab>
inoremap (<Enter> (<Enter>)<Esc>O<tab>

" MV explorer
let g:netrw_banner = 0 " Remove top banner
let g:netrw_liststyle = 3 " List using lines
let g:netrw_sort_sequence = '[\/]$,*' " Folders on top, files on bottom

inoremap <c-k> <Esc>:Lex<cr>:vertical resize 20<cr>
nnoremap <c-k> <Esc>:Lex<cr>:vertical resize 20<cr>

" Contains MV custom snippets
source $HOME/.snippets/snippets.vim

"Plug installer
call plug#begin()
Plug 'tpope/vim-commentary'
Plug 'ap/vim-css-color'

Plug 'SirVer/ultisnips'
Plug 'itchyny/lightline.vim'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'vimwiki/vimwiki'
Plug 'mattn/emmet-vim'
Plug 'sheerun/vim-polyglot'
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


