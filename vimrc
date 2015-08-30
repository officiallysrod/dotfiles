""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General configurations
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible          " don't maintain compatibility with Vi
filetype plugin indent on " load file type plugins + indentation
set showcmd               " show partial commands in the last line of the screen
set noshowmode
set hidden                " allow buffer change w/o saving
set encoding=utf-8        " set character encoding
:autocmd FocusLost * :wa  " save file on focus lost
set autowrite             " automatically :w before running commands
set nowritebackup         " don't use vim to backup
set nobackup              " don't use vim to backup
set updatetime=750        " to speed up git gutter plugin
set mouse=a               " mouse selection won't include line numbers now
set tags=./tags;          " tell Vim where to find tags file

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

Plug 'kien/ctrlp.vim'                " fuzzy file finding
Plug 'tpope/vim-commentary'          " easy file commenting
Plug 'airblade/vim-gitgutter'        " show git status in the gutter
Plug 'henrik/vim-indexed-search'     " show number of matches in search results
Plug 'tpope/vim-fugitive'            " for airline to show git branch

" for easier buffer management
Plug 'jeetsukumaran/vim-buffergator'
let g:buffergator_autoexpand_on_split = 0

" status and tabline plugin
Plug 'bling/vim-airline'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#hunks#enabled = 0 " don't show git details
let g:airline_powerline_fonts = 1
let g:airline_theme='silver'

" auto-completion
Plug 'Valloric/YouCompleteMe', { 'do': './install.sh --clang-completer' }
let g:ycm_key_list_select_completion   = ['<C-j>', '<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<C-p>', '<Up>']

" ultisnips plugin and trigger configuration
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
let g:UltiSnipsExpandTrigger = "<tab>"

call plug#end()

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

" open ctrlp w/ <leader>p
map <leader>p :CtrlP<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Shell and Text Formatting
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set t_Co=256      " enables 256 colors in Vim
color dracula     " set color theme
set number        " displays line numbers
set ruler         " displays column number
syntax on         " turns syntax highlighting on
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

if &term =~ "xterm\\|rxvt"
  " use an orange cursor in insert mode
  let &t_SI = "\<Esc>]12;orange\x7"
  " use a red cursor otherwise
  let &t_EI = "\<Esc>]12;red\x7"
  silent !echo -ne "\033]12;red\007"
  " reset cursor when vim exits
  autocmd VimLeave * silent !echo -ne "\033]112\007"
  " use \003]12;gray\007 for gnome-terminal
endif

if &term =~ '^xterm'
  " blinking vertical bar
  let &t_SI .= "\<Esc>[5 q"
  " blinking block
  let &t_EI .= "\<Esc>[1 q"
  " 1 or 0 -> blinking block
  " 3 -> blinking underscore
  " Recent versions of xterm (282 or above) also support
  " 5 -> blinking vertical bar
  " 6 -> solid vertical bar
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Searching
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set hlsearch   " highlight matches
set incsearch  " incremental searching
set ignorecase " case-insensitive searching...
set smartcase  " ...unless they contain at least one capital letter

