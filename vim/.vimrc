" Set up for Plug
call plug#begin('~/.vim/plugged')

" Plugins
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'bling/vim-airline'
Plug 'kchmck/vim-coffee-script'
Plug 'altercation/vim-colors-solarized'
Plug 'tpope/vim-fugitive'
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'tpope/vim-sensible'
Plug 'christoomey/vim-tmux-navigator'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }

call plug#end()

filetype plugin indent on

" Solarized theme setting
syntax enable
set background=dark
colorscheme solarized

" Solarized theme setting for AirLine
let g:airline_solarized_bg="dark"

" Enable powerline font for airline
let g:airline_powerline_fonts = 1


" Auto open NERDTree when vim starts up
autocmd vimenter * NERDTree
" Auto close NERDTree if NERDTree is the only windown open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Enable visual search
vnoremap // y/<C-R>"<CR>
