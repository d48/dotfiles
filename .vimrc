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
Bundle 'kchmck/vim-coffee-script'
Bundle 'walm/jshint.vim'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-markdown'
Bundle 'cschlueter/vim-clouds'
Bundle 'vim-scripts/AutoComplPop'
Bundle 'vim-scripts/PDV--phpDocumentor-for-Vim'
Bundle 'tsaleh/vim-align'

" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'rails.vim'
Bundle 'Lucius'
Bundle 'noahfrederick/Hemisu'

" non-github repos
Bundle 'git://git.wincent.com/command-t.git'		


" 256 color term
set t_Co=256

if &t_Co > 2 || has("gui_running")
	syntax on
	" colorscheme hemisu
	colorscheme lucius 
	" colorscheme Clouds 
	" set background=dark
endif

set tabstop=5 softtabstop=5 shiftwidth=5 noexpandtab
set number

set clipboard=unnamed	" Copy buffer to system clipboard
set mouse=r			
set mousefocus			" Follow mouse focus
set nobackup			" Do not keep a backup file
set noswapfile
set history=1000		" Keep 1000 lines of command line history
set hlsearch
" set rnu				" relative line numbers, helps in fast delete
set cc=80				" highlight column 80 for visual 
" set paste				" format copy and paste from source

" Filetypes
au BufRead,BufNewFile *.json set filetype=javascript
au BufRead,BufNewFile *.less set filetype=css
au BufRead,BufNewFile *.styl set filetype=css
autocmd Filetype javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab 
autocmd Filetype css setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab 
autocmd Filetype coffee setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab 
autocmd Filetype json setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab 
autocmd Filetype html setlocal tabstop=5 shiftwidth=5 softtabstop=5 expandtab 
autocmd Filetype phtml setlocal tabstop=5 shiftwidth=5 softtabstop=5 expandtab 
autocmd Filetype php setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab 

" omni completion
filetype plugin on
set ofu=syntaxcomplete#Complete " Enable syntax completion?
set completeopt=longest,menuone		" Show longest match, at lest one option
inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
  \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

set ai
set si

" Key mappings
nmap <F7> :tabprevious<CR>
nmap <F8> :tabnext<CR>
map <C-h> :tabprevious<CR>
map <C-l> :tabnext<CR>
nnoremap <D-up> :resize -5<CR>
nnoremap <D-down> :resize +5<CR>
nmap <silent> <C-n> :NERDTreeToggle<CR>    " Ctrl+N to toggle                   
                                                                                
" PHP doc block                                                                 
inoremap <C-K> <ESC>:call PhpDocSingle()<CR>i                                   
nnoremap <C-K> :call PhpDocSingle()<CR>                                         
vnoremap <C-K> :call PhpDocRange()<CR>                                          

" Command-T
nmap <C-t> :CommandT<CR>

" Align
vmap <C-a> \t=<CR>


" aligning comments                                                             
autocmd BufNewFile,BufRead * setlocal formatoptions+=or " show pwd in vim

if &term == "screen"
    set t_ts=^[k
    set t_fs=^[\
endif
if &term == "screen" || &term == "xterm"
    set title
endif

autocmd BufEnter * let &titlestring = "vim " . expand("%:t") . " " . expand("%:h")
