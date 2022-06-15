source $HOME/.config/nvim/vim-plug/plugins.vim

syntax on
colorscheme onehalfdark

call plug#begin()

Plug 'preservim/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'sheerun/vim-polyglot'
Plug 'Yggdroot/indentLine'
Plug 'sonph/onehalf', { 'rtp': 'vim' }

call plug#end()
