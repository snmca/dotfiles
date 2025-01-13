" Set leader key to backslash
let mapLeader = "\\"

" .vimrc 
set encoding=utf-8
set shiftwidth=4
set tabstop=4
set expandtab
set mouse=a
set nowrap
set number
set rnu
set ruler
set autoindent
set smartindent
set smarttab
syntax enable

" Misc
set fillchars=eob:\

" Case insentivie write + quit
command W write
command Q quit

" Quicker Esc
inoremap kj <Esc>
inoremap Kj <Esc>
inoremap kJ <Esc>
vnoremap kj <Esc>
vnoremap Kj <Esc>
vnoremap kJ <Esc>

" Visual
set background=dark
set laststatus=2
set colorcolumn=80,88,120
highligh ColorColumn ctermbg=238
colorscheme habamax 

" Key bindings
map <leader>r :source $MYVIMRC<CR>
