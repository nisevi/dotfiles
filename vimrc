set nocompatible              " be iMproved, required
filetype off                  " required

filetype plugin indent on    " required

" Tell Vim where to look for the tags file.
set tags=./tags;

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set autoindent " Auto indention should be on

" Syntax highlighting and theme
syntax enable

" Lovely linenumbers
set nu

" My leader key
let mapleader=","

" Searching
set hlsearch
" Highlights the areas that you search for.
set incsearch
" Searches incremetally as you type.
set ignorecase
" Ignores the case in the file.
set smartcase

" Remove highlights with leader + enter
nmap <Leader><CR> :nohlsearch<cr>

" Don't be a noob, join the no arrows key movement
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

" Removing escape
ino jj <esc>
cno jj <c-c>
vno v <esc>

" highlight the current line
set cursorline
" Highlight active column
set cuc cul"

" Tab completion
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*

" Ruby hash syntax conversion
nnoremap <F12> :%s/:\([^ ]*\)\(\s*\)=>/\1:/g<return>

map <leader>q :NERDTreeToggle<CR>

set clipboard=unnamed

" Linebreak on 500 characters
set lbr
set tw=500

" No swap files
set noswapfile

" Remove white spaces by pressing '\w'
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc

map <leader>w :call DeleteTrailingWS()<CR>

" Ruby stuff
" ================
syntax on                 " Enable syntax highlighting
filetype plugin indent on " Enable filetype-specific indenting and plugins

augroup myfiletypes
    " Clear old autocmds in group
    autocmd!
    " autoindent with two spaces, always expand tabs
    autocmd FileType ruby,eruby,yaml,markdown set ai sw=2 sts=2 et
    autocmd FileType php set ai sw=4 sts=4 et
augroup END
" ================
