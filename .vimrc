set title
set noswapfile

set encoding=utf-8

syntax on
set t_Co=256
colorscheme delek

cmap w!! %!sudo tee > /dev/null %

set mouse-=a
set mousehide
set visualbell
set cursorline
hi CursorLine term=underline cterm=NONE ctermbg=235
hi CursorLineNr term=underline cterm=NONE ctermbg=235

set tabstop=4
set shiftwidth=4
set softtabstop=0
set noexpandtab

