"Mouse scrolling
"set mouse=nicr
"Plugin management
call plug#begin()

    Plug 'sainnhe/everforest'
    Plug 'tpope/vim-fugitive'
    Plug 'scrooloose/nerdtree'                         " Nerdtree
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'     " Highlighting Nerdtree

call plug#end()

"NERDTree setup
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '►'
let g:NERDTreeDirArrowCollapsible = '▼'
let NERDTreeShowLineNumbers=1
let NERDTreeShowHidden=1
let NERDTreeMinimalUI = 1
let g:NERDTreeWinSize=38

set nu
set relativenumber
map <F2> :bprev<CR>
map <F3> :bnext<CR>
map <F5> :source ~/.vimrc<CR>

" Remap escape
"inoremap jh <Esc>
inoremap ,i <Esc>
set hlsearch

" <CTRl-l> redraws the screen and removes any search highlights.
nnoremap<silent> <C-l> :nohl<CR>

colorscheme everforest
"colorscheme slate
"Set if term support 256 colors.
set t_Co=256

" Leader key
let mapleader = "," 

" save file 
inoremap <leader>w <Esc>:w<cr><Space>
" save file in normal mode
nnoremap <leader>w :w<CR>

" open a terminal inside the vim
map <leader>tt :terminal<CR>

set expandtab                   " Use spaces instead of tabs.
set smarttab                    " Be smart using tabs ;)
set shiftwidth=4                " One tab == four spaces.
set tabstop=4                   " One tab == four spaces.



" Remap splits navigation to just CTRL + hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"split key-binding
map<leader>s :split<CR>
map<leader>v :vsplit<CR>
"close the split
map<leader>c :close<CR>
