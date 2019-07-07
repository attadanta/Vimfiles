" ----------------------------------------------------------------------------
" PLUGINS, COLORS
" ----------------------------------------------------------------------------
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-unimpaired'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'sheerun/vim-polyglot'
Plugin 'w0rp/ale'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'altercation/vim-colors-solarized'
call vundle#end()

filetype plugin indent on

" Enable fzf Integration
set rtp+=~/.fzf

" ----------------------------------------------------------------------------
" OPTIONS
" ----------------------------------------------------------------------------

set autoindent              " Carry over indenting from previous line
set autoread                " Don't bother me hen a file changes
set autowrite               " Write on :next/:prev/^Z
set encoding=utf8           " UTF-8 by default
set expandtab               " No tabs
set fileformats=unix,dos,mac
set hidden                  " Don't prompt to save hidden windows until exit
set hlsearch                " Hilight searching
set incsearch               " Search as you type
set infercase               " Completion recognizes capitalization
set laststatus=2            " Always show the status bar
set linebreak               " Break long lines by word, not char
set list                    " Show whitespace as special chars - see listchars
set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:· " Unicode characters for various things
set matchtime=2             " Tenths of second to hilight matching paren
set nomodeline              " teh hackerz!!!1
set nobackup                " No backups left after done editing
set visualbell t_vb=        " No flashing or beeping at all
set ruler                   " Show row/col and percentage
set shiftround              " Shift to certain columns, not just n spaces
set shiftwidth=2            " Number of spaces to shift for autoindent or >,<
set showbreak=              " Show for lines that have been wrapped, like Emacs
set showmatch               " Hilight matching braces/parens/etc.
set tabstop=2               " The One True Tab
set textwidth=100           " 100 is the new 80
set wildmenu                " Show possible completions on command line
set wildmode=list:longest,full " List all options and complete
set sidescrolloff=3         " Keep cursor away from this many chars left/right
set wildignore=*.class,*.o,*~,*.pyc,.git,node_modules  " Ignore certain files in tab-completion
silent! set mouse=nvc       " Use the mouse, but not in insert mode

" ----------------------------------------------------------------------------
" COLORS
" ----------------------------------------------------------------------------

set background=dark
colorscheme solarized
syntax on

" ----------------------------------------------------------------------------
" KEY BINDINGS
" ----------------------------------------------------------------------------

nmap \d :ALEToggleBuffer<CR>
nmap \e :NERDTreeToggle<CR>
nmap \f :ALEFix<CR>
nmap \g :GitGutterToggle<CR>
nmap \l :setlocal number!<CR>:setlocal number?<CR>
nmap \m :set expandtab tabstop=2 shiftwidth=2 softtabstop=2<CR>
nmap \o :set paste!<CR>:set paste?<CR>

" Use the space key to toggle folds
nnoremap <space> za
vnoremap <space> zf

" Super fast window movement shortcuts
nmap <C-j> <C-W>j
nmap <C-k> <C-W>k
nmap <C-h> <C-W>h
nmap <C-l> <C-W>l

" For any plugins that use this, make their keymappings use comma
let mapleader = ","
let maplocalleader = ","

" FZF (replaces Ctrl-P, FuzzyFinder and Command-T)
nmap ; :Buffers<CR>
nmap <Leader>r :Tags<CR>
nmap <Leader>t :Files<CR>
nmap <Leader>a :Rg!<CR>
nmap <Leader>c :Colors<CR>
