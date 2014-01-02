set nocompatible

filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()


Bundle 'gmarik/vundle'
" pathogen.vim makes it super easy to install plugins and runtime files in their own private directories
Bundle 'tpope/vim-pathogen'
" allows you to explore your filesystem and to open files and directories
Bundle 'scrooloose/nerdtree'
" syntax checking plugin that runs files through external syntax checkers and displays any resulting errors
Bundle 'scrooloose/syntastic'
" a colorful, dark color scheme
Bundle 'nanotech/jellybeans.vim'
" slim syntax highlighting for vim
Bundle 'slim-template/vim-slim'

filetype plugin indent on

let mapleader=","

color jellybeans

" highlights current line
set cursorline
" converts tabs to spaces
set expandtab
" the modelines variable sets the number of lines (at the beginning and end of each file) vim checks for initializations
set modelines=0
" control how many columns text is indented with the reindent operations (<< and >>)
set shiftwidth=2
" allows vim to access the system clipboard
set clipboard=unnamed
" limits syntax highlighting at character 128. Long lines slows down the world
set synmaxcol=128
" If your terminal scrolls very slowly, but redrawing is not slow, this will make Vim redraw the
" screen instead of scrolling, when there are more than 3 lines to be scrolled.
set ttyscroll=3
" sets default file encoding to be utf-8
set encoding=utf-8
" tells vim how many columns a tab counts for
set tabstop=2
" avoid wrapping long lines
set nowrap
" shows line numbers
set number 
" when it is set, hitting Tab in insert mode will produce the appropriate number of spaces
set expandtab
" avoids the creation of *.ext~ file (that is a backup file), containing the file as it was before you edited it.
set nowritebackup
set nobackup
" avoids the creation of a *.ext.swp file (that is a swap file), that is a temporary file
set noswapfile
" highlights search matches
set hlsearch
" makes search not case sensitive
set ignorecase
" when 'ignorecase' and 'smartcase' are both on, if a pattern contains an uppercase letter, 
" it is case sensitive, otherwise, it is not. For example, /The would find only 'The', 
" while /the would find 'the' or 'The' etc.
set smartcase
