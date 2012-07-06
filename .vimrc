set nocompatible
filetype off

set rtp+=~/.vim/vundle.git/
call vundle#rc()
call pathogen#infect()

filetype plugin indent on

" My Bundles here:
" Original repos on github
Bundle 'Lokaltog/vim-easymotion'				
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}		
Bundle 'vim-scripts/tComment'
Bundle 'scrooloose/nerdtree'
Bundle 'Townk/vim-autoclose'
Bundle 'kchmck/vim-coffee-script'
Bundle 'msanders/snipmate.vim'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-rails'
Bundle 'endel/vim-github-colorscheme'
Bundle 'vim-scripts/AutoComplPop'

" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'Lucius'
Bundle 'noahfrederick/Hemisu'

" non-github repos
Bundle 'git://git.wincent.com/command-t.git'		


" 256 color term
" set t_Co=256

if &t_Co > 2 || has("gui_running")
	syntax on
	" colorscheme hemisu
	" colorscheme lucius 
	colorscheme Tomorrow-Night
	" set background=light
	set background=dark
endif


set number

set clipboard=unnamed	" system clipboard
set mouse=a		" Use mouse in normal and visual modes
set mousefocus		" Follow mouse focus
set nobackup		" Do not keep a backup file
set noswapfile		" No swap files
set history=1000	" Keep 1000 lines of command line history
set hlsearch		" highlight keywords in search

" Ignore case when searching
set ignorecase

" Show matching braces
set showmatch

autocmd Filetype javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab 
autocmd Filetype coffee setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab 
autocmd Filetype css setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab 
autocmd Filetype html setlocal tabstop=5 shiftwidth=5 softtabstop=5 expandtab 
autocmd Filetype haml setlocal tabstop=5 shiftwidth=5 softtabstop=5 expandtab 
autocmd Filetype php setlocal tabstop=5 shiftwidth=5 softtabstop=5 expandtab 
autocmd Filetype markdown setlocal tabstop=5 shiftwidth=5 softtabstop=5 expandtab 
autocmd BufRead,BufNewFile *.coffee setf=coffee
autocmd BufRead,BufNewFile *.erb setf=ruby

" Omni complete
" set completeopt=longest,menuone

syntax on

set ai
set si

" Key mappings
nmap <F7> :tabprevious<CR>
nmap <F8> :tabnext<CR>
