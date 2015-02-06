" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

set number                      "Line numbers are good
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set gcr=a:blinkon0              "Disable cursor blink
set visualbell                  "No sounds
set autoread                    "Reload files changed outside vim
set hidden
syntax on

set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab
set nowrap

set hlsearch                    " Highlight searches
set ignorecase                  " Ignore case of searches.
set incsearch                   " Highlight dynamically as pattern is typed.
set splitbelow                  " New window goes below
set splitright                  " New windows goes right

execute pathogen#infect()

" JSON
au BufRead,BufNewFile *.json set ft=json syntax=javascript

" Jade
au BufRead,BufNewFile *.jade set ft=jade syntax=jade

" Common Ruby files
au BufRead,BufNewFile Rakefile,Capfile,Gemfile,.autotest,.irbrc,*.treetop,*.tt set ft=ruby syntax=ruby

" Go files
au BufRead,BufNewFile *.go set ft=go syntax=go

set laststatus=2 
set statusline=%f               "Current path of file 
set statusline+=%=              "Switch to right side 
set statusline+=%l/%L           "Current Line/Total Lines 

" CtrlP ignore folders
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" NERDTree
map <silent> <C-n> :NERDTreeToggle<CR>

colorscheme jellybeans
