" Vundle set up
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugins
" ctrlp.vim            vim-coffee-script    vim-javascript
" nerdtree             vim-colors-solarized vim-sensible
" vim-airline          vim-fugitive         vim-tmux-navigator
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'kchmck/vim-coffee-script'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-fugitive'
Plugin 'pangloss/vim-javascript'
Plugin 'tpope/vim-sensible'
Plugin 'christoomey/vim-tmux-navigator'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Solarized theme setting
syntax enable
set background=dark
"colorscheme solarized

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
