execute pathogen#infect()
syntax on


" Enable powerline font for airline
let g:airline_powerline_fonts = 1
" Auto close NERDTree if NERDTree is the only windown open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
