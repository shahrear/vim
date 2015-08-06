"Md Shahrear Iqbal's vimrc

" Plugins
" =============

set nocompatible                " Use vim rather than vi settings

"Setup Vundle For Package Management

"Vundle begins here, turn off filetype temporarily
filetype off
"Add vundle and any other packages not installed through vundle to our lookup
"path
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

"theme
Plugin 'blueshirts/darcula'

" Functionality

" ### Indispensable
" ctrlp is file fuzzy search
Plugin 'kien/ctrlp.vim'
" Ack.vim uses ack to search within files
Plugin 'mileszs/ack.vim'

" ### Use sometimes

"Nerdtree provides a file explorer, which is sometimes useful. Mostly ctrlp handles file finding though
Plugin 'scrooloose/nerdtree'


" Experimenting with these
Plugin 'oplatek/Conque-Shell'
Plugin 'ervandew/screen'

"End Vundle
call vundle#end()
" "Vundle ended so reenable filetypes
filetype plugin indent on


" Appearance
" ==========

" "Syntax highlighting should be in 256 colors
syntax on
syntax enable
set t_Co=256
colorscheme darcula

" Sanity Config (Don't edit text like an animal)
" ==============================================

set encoding=utf-8              " standard encoding
set number                      " Its nice to see line numbers
set backspace=indent,eol,start  " Allow backspace in insert mode
set autoread                    " Reload files changed outside vim
set hidden                      " Buffers can exist in the background
set history=1000                " Store lots of :cmdline history (its not 1990)
"Don't dump distracting text to terminal during searches!
set shellpipe=2>/dev/null>
set re=1                        "Use a non-broken regex engine for syntax highlighting

" General Config
" ==============

let mapleader='\'               " I just use the default Leader
set showcmd                     " Show incomplete cmds down the bottom
set gcr=a:blinkon0              " Disable cursor blink
set laststatus=2                " Always show status line
set splitright                  " Opens vertical split right of current window
set splitbelow                  " Opens horizontal split below current window


" Mouse
" ======

" Send more characters for redraws
set ttyfast
" Enable mouse use in all modes
set mouse=a
" Set this to the name of your terminal that supports mouse codes.
" Must be one of: xterm, xterm2, netterm, dec, jsbterm, pterm
set ttymouse=xterm2


" Search Settings
" ===============

set incsearch        " Find the next match as we type the search
set hlsearch         " Highlight searches by default
set viminfo='100,f1  " Save up to 100 marks, enable capital marks

" Turn Off Swap Files
" ===================

set noswapfile
set nobackup
set nowritebackup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

" Persistent Undo
" ===============


" Indentation and Display
" =======================

" We want to replace tabs with spaces and have 4 space width indentation
set autoindent
set smartindent
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab

set list listchars=tab:\ \ ,trail:·   " Display tabs and trailing spaces visually
set nowrap                            " Don't wrap lines

" Folds
" =====
set foldmethod=indent   " Fold based on indent
set foldnestmax=3       " Deepest fold is 3 levels
set nofoldenable        " Don't fold by default


" Completion
" ==========

"set wildmode=list:longest
set wildmode=longest,list,full
set wildmenu                    " Enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~     " Stuff to ignore when tab completing
set wildignore+=*vim/backups*

" Scrolling
" =========

" Start scrolling when we're getting close to margins
set scrolloff=10
set sidescrolloff=15
set sidescroll=1


" Custom commands
" ===============

"Let K be the opposite of J
imap K i<Enter><Esc>
"\rr => refresh vimrc
imap <leader>rr :source ~/.vimrc<CR>
imap jk <Esc>
set pastetoggle=<F5>


" Plugin Options
" ==============


" CTRL+P options

set wildignore+=*/wcui/dist/*
let g:ctrlp_user_command = 'ag %s -i --nocolor --ignore .git  --ignore .svn  --ignore .hg  --ignore .DS_Store  --ignore "static"  --ignore "**/*.pyc"  -g ""'

"NerdTree Options
map <c-t> :NERDTreeToggle<CR>
let NERDTreeHijackNetrw=1 "Put Nerdtree into a window






