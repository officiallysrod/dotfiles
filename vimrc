""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General configurations
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible          " don't maintain compatibility with Vi
filetype plugin indent on " load file type plugins + indentation
set showcmd               " show partial commands in the last line of the screen
set hidden                " allow buffer change w/o saving
set encoding=utf-8        " set character encoding
:autocmd FocusLost * :wa  " save file on focus lost
set autowrite             " automatically :w before running commands
set nowritebackup         " don't use vim to backup
set nobackup              " don't use vim to backup

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Key mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" map the leader key to space bar
let mapleader = "\<Space>"

" easy access to start of a line
nmap 0 ^

" with word wrap turned on, navigate up/down wrapped lines
nmap k gk
nmap j gj

" shortcuts for navigating panes
nnoremap <leader>h <C-w>h
nnoremap <leader>l <C-w>l
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k

" shortcuts for navigating tabs
nnoremap <leader>t gt

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Shell and Text Formatting
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
color Dracula     " set color theme
set number        " displays line numbers
set ruler         " displays column number
syntax on         " turns syntax highlighting on
set t_Co=256      " enables 256 colors in Vim
set cmdheight=2   " set command window height to 2 lines
set cursorline    " highlight the current line
set guioptions-=e " use Vim tabs instead of MacVim tabs
set expandtab     " convert tabs to spaces
set tabstop=2     " set tab space to 2
set shiftwidth=2  " set number of space characters used for indentation
set laststatus=2  " always display the status line
set splitbelow    " open new split panes below current pane
set splitright    " open new vsplit panes to right of current pane

" display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" when opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Searching
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set hlsearch   " highlight matches
set incsearch  " incremental searching
set ignorecase " case-insensitive searching...
set smartcase  " ...unless they contain at least one capital letter
