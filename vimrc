set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
Plugin 'vim-ruby/vim-ruby'

" Don't dare to leave a white space!
Plugin 'bronson/vim-trailing-whitespace'

"Rails
Plugin 'tpope/vim-rails'

" Dependencies of snipmate
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'honza/vim-snippets'

Plugin 'garbas/vim-snipmate'

"Git wrapper
Plugin 'tpope/vim-fugitive'

" Dependency managment
Plugin 'gmarik/vundle'

" Making comments
Plugin 'tomtom/tcomment_vim'

" Molokai theme
Plugin 'tomasr/molokai'

" Surround your code. Is all about 'surroundings'
Plugin 'tpope/vim-surround'

" Every one should have a pair (Autogenerate pairs for "{[( )
Plugin 'jiangmiao/auto-pairs'

" Tab completions
Plugin 'ervandew/supertab'

" Fuzzy finder for vim (CTRL+P)
Plugin 'kien/ctrlp.vim'

" For tests
Plugin 'janko-m/vim-test'

" Navigation tree
Plugin 'scrooloose/nerdtree'

" Dispatching the test runner to tmux pane
Plugin 'tpope/vim-dispatch'

call vundle#end()            " required
filetype plugin indent on    " required

" Tell Vim where to look for the tags file.
set tags=./tags;

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set autoindent " Auto indention should be on

" Syntax highlighting and theme
syntax enable

" Configs to make Molokai look great
set background=dark
let g:molokai_original=1
let g:rehash256=1
set t_Co=256
colorscheme molokai

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
