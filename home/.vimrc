" ##############################################################################
" Defaults
" ##############################################################################

" necessary for lots of cool vim things
set nocompatible

" always display the status line
set laststatus=2

set wildmenu

" enable 256 colors
set t_Co=256

" opening a new file when the current buffer has unsaved changes causes files to be hidden instead of closed
set hidden

" increases Vim's history
set history=1000

" enable setting title
set title

" backspace over everything in insert mode
set backspace=indent,eol,start

" determines the minimum number of screen lines that you would like above and below the cursor.
set scrolloff=5

filetype off

" ##############################################################################
" Plug-ins
" ##############################################################################

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" pathogen.Vim makes it super easy to install plug-in and runtime files in their own private directories
Plugin 'tpope/vim-pathogen'

" allows you to explore your file system and to open files and directories
Plugin 'scrooloose/nerdtree'

" syntax checking plug-in that runs files through external syntax checkers and displays any resulting errors
Plugin 'scrooloose/syntastic'

" a colorful, dark color scheme
Plugin 'nanotech/jellybeans.vim'

" slim syntax highlighting for Vim
Plugin 'slim-template/vim-slim'

" base16 for Vim
Plugin 'chriskempson/base16-vim'

" quoting and parenthesizing made simple
Plugin 'tpope/vim-surround'

Plugin 'tpope/vim-fugitive'

Plugin 'bling/vim-airline'

Plugin 'kien/ctrlp.vim'

Plugin 'mileszs/ack.vim'

Plugin 'ddollar/nerdcommenter'

Plugin 'tpope/vim-unimpaired'

Plugin 'ervandew/supertab'

" this library provides some utility functions
Plugin 'vim-scripts/tlib'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'garbas/vim-snipmate'

Plugin 'Lokaltog/vim-easymotion'

" this plugin causes all trailing whitespace to be highlighted in red.
Plugin 'bronson/vim-trailing-whitespace'


call vundle#end()
" Automatically detect file types
filetype plugin indent on


" ##############################################################################
" Other configurations
" ##############################################################################

" enables syntax highlight
syntax enable

set ttimeoutlen=50
let g:airline_powerline_fonts=1
set termencoding=utf-8
let g:airline_theme='powerlineish'

filetype plugin indent on


" show matching brackets / parenthesis
set showmatch

" makes it easier to see in which line and column the cursor is
set ruler

" remaps leader
let mapleader=","

" highlights current line
set cursorline

" the modelines variable sets the number of lines (at the beginning and end of each file) Vim checks for initializations
set modelines=0

" control how many columns text is indented with the re-indent operations (<< and >>)
set shiftwidth=2

" limits syntax highlighting at character 128. Long lines slows down the world
set synmaxcol=228

" If your terminal scrolls very slowly, but redrawing is not slow, this will make Vim redraw the
" screen instead of scrolling, when there are more than 3 lines to be scrolled.
set ttyscroll=3

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

" ##############################################################################
" File encoding
" ##############################################################################

" sets default file encoding to be utf-8
set encoding=utf-8

" the encoding written to file.
set fileencoding=utf-8


" ##############################################################################
" Spell checker configurations
" ##############################################################################

" enables spell checker
"set spell


" ##############################################################################
" Search
" ##############################################################################

" finds matches as you type
set incsearch

" highlights search matches
set hlsearch

" makes search not case sensitive
set ignorecase

" when 'ignorecase' and 'smartcase' are both on, if a pattern contains an uppercase letter,
" it is case sensitive, otherwise, it is not. For example, /The would find only 'The',
" while /the would find 'the' or 'The' etc.
set smartcase

" unhighlight search once you press ESC
nnoremap <esc> :nohlsearch<return><esc>

" ##############################################################################
" Smart Indenting
" ##############################################################################

" tells Vim how many columns a tab counts for
set tabstop=2

set softtabstop=2

" converts tabs to spaces
set expandtab

set smarttab

" indents at the same level of the previous line
set autoindent

" ##############################################################################
" Colors
" ##############################################################################

" assume a dark background
set background=dark

" set color scheme
colorscheme jellybeans

" set term to 256 colors
set term=screen-256color

" ##############################################################################
" NERDTree configurations
" ##############################################################################

" Remap NERDTreeToggle to Control-e
map <leader>1 :NERDTreeToggle<CR>
