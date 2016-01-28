" Set up for Plug
call plug#begin('~/.vim/plugged')

" Plugins
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'bling/vim-airline'
Plug 'kchmck/vim-coffee-script', { 'for': 'coffee' }
Plug 'altercation/vim-colors-solarized'
Plug 'tpope/vim-fugitive'
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'tpope/vim-sensible'
Plug 'christoomey/vim-tmux-navigator'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'marijnh/tern_for_vim', { 'do': 'npm install', 'for': 'javascript' }
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
"Plug 'Yggdroot/indentLine'

call plug#end()

" Solarized theme setting
syntax enable
set background=dark
colorscheme solarized

" Solarized theme setting for AirLine
let g:airline_solarized_bg="dark"

" Enable powerline font for airline
let g:airline_powerline_fonts = 1


" Auto open NERDTree when vim starts up
" autocmd vimenter * NERDTree
" Auto close NERDTree if NERDTree is the only windown open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Indent Line setting
" Only the leading spaces are shown
let g:indentLine_enabled=0
let g:indentLine_leadingSpaceChar='.'
let g:indentLine_leadingSpaceEnabled=1

" Enable visual search
vnoremap // y/<C-R>"<CR>
" Something from myself
filetype plugin indent on
set number
set hlsearch
set tabstop=2 shiftwidth=2 expandtab
" set the cursor to a vertical line in insert mode and a solid block
" in command mode
let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"

" keep selection on indent
vnoremap > >gv
vnoremap < <gv

" Hightlight line and column
"au WinLeave * set nocursorline nocursorcolumn
"au WinEnter * set cursorline cursorcolumn
"set cursorline cursorcolumn

" Make mouse select works
set mouse=a
set ttymouse=xterm2

" Make clipboard works
vmap <C-c> y:call system("pbcopy", getreg("\""))<CR>
