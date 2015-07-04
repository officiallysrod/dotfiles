"""""""""""""""""""""""""""""""""""""""""""""""""
" Basic configuration
"""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible
filetype plugin indent on " load file type plugins + indentation
set encoding=utf-8
set showcmd " show partial commands in the last line of the screen
set hidden

"""""""""""""""""""""""""""""""""""""""""""""""""
" Shell formatting
"""""""""""""""""""""""""""""""""""""""""""""""""

color Dracula     " set color theme
set number        " displays line numbers
set ruler         " displays column number
syntax on         " turns syntax highlighting on
set t_Co=256      " enables 256 colors in Vim
set cmdheight=2   " set command window height to 2 lines
set cursorline    " highlight the current line
set guioptions-=e " use Vim tabs instead of MacVim tabs

set tabstop=2 shiftwidth=2 expandtab " sets tab space to 2 and converts tabs to spaces

" when opening a new line and no filetype-specific indenting is enable, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent

" set default gui font
if has('gui_running')
  set guifont=Source_Code_Pro:17
endif

"""""""""""""""""""""""""""""""""""""""""""""""""
" Searching
"""""""""""""""""""""""""""""""""""""""""""""""""

set hlsearch   " highlight matches
set incsearch  " incremental searching
set ignorecase " case-insensitive searching...
set smartcase  " ...unless they contain at least one capital letter
