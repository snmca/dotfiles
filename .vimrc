" Set leader key to backslash
let mapLeader = "\\"

" .vimrc 
set encoding=utf-8
set shiftwidth=2
set tabstop=2
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
set colorcolumn=74,80,100
highligh ColorColumn ctermbg=238
colorscheme habamax 
highlight CursorLine ctermbg=darkgrey ctermfg=black
highlight CursorColumn ctermbg=darkgrey ctermfg=black

" Key bindings
map <leader>r :source $MYVIMRC<CR>
map <leader>h :set cursorline!<CR>
nnoremap <Esc>j :m .+1<CR>
nnoremap <Esc>k :m .-2<CR>
