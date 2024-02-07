set nu rnu
set cursorline
colors gruvbox
set autoindent
set hlsearch
set ignorecase
set incsearch
set smartcase
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set laststatus=2
set termguicolors
set encoding=UTF-8
set mouse-=a
set backspace=indent,eol,start
filetype plugin indent on

call plug#begin()
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/ervandew/supertab'
Plug 'https://github.com/tpope/vim-fugitive'
Plug 'https://github.com/vim-syntastic/syntastic'
Plug 'https://github.com/tpope/vim-commentary'
Plug 'https://github.com/preservim/nerdtree'
call plug#end()

let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='gruvbox'

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

nnoremap <F2> :NERDTreeToggle<CR>

nnoremap <F3> :Git pull
nnoremap <F5> :Git commit
nnoremap <F4> :Git add %
nnoremap <F6> :Git push
