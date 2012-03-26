set nocompatible
filetype off

set rtp+=~/.vim/vundle.git/
call vundle#rc()

filetype plugin indent on

" My Bundles here:
" Original repos on github
Bundle 'Lokaltog/vim-easymotion'				
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}		
Bundle 'vim-scripts/tComment'
Bundle 'scrooloose/nerdtree'

" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'rails.vim'

" non-github repos
Bundle 'git://git.wincent.com/command-t.git'		


" 256 color term
set t_Co=256

set background=dark
colorscheme lucius

set tabstop=5 softtabstop=5 shiftwidth=5 noexpandtab
set number

set mouse=a	" Use mouse in normal and visual modes
set mousefocus	" Follow mouse focus


autocmd Filetype javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2 noexpandtab 
autocmd Filetype html setlocal tabstop=5 shiftwidth=5 softtabstop=5 noexpandtab 

syntax on

set ai
set si

" Key mappings
nmap <F7> :tabprevious<CR>
nmap <F8> :tabnext<CR>

