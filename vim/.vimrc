execute pathogen#infect()
syntax enable
set background=dark
colorscheme solarized

" Enable powerline font for airline
let g:airline_powerline_fonts = 1
" Auto open NERDTree when vim starts up
autocmd vimenter * NERDTree
" Auto close NERDTree if NERDTree is the only windown open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
