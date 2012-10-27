" Prep some variables for use with syntastic syntax checker
let g:syntastic_auto_loc_list=1
let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'
let g:syntastic_jshint_config = '~/.jshintrc'

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
" Bundle 'Townk/vim-autoclose'
Bundle 'vim-scripts/Auto-Pairs'
Bundle 'nathanaelkane/vim-indent-guides'

" syntax highlighting
Bundle 'hallison/vim-markdown'
Bundle 'vim-scripts/jade.vim'

" colorschemes
Bundle 'wgibbs/vim-irblack'
Bundle 'vim-scripts/tir_black'
Bundle 'matthewtodd/vim-twilight'

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
	" colorscheme lucius 
	colorscheme Twilight 
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
au BufRead,BufNewFile *.scss set filetype=css
au BufRead,BufNewFile *.sass set filetype=css
au BufRead,BufNewFile *.less set filetype=css
au BufRead,BufNewFile *.styl set filetype=css
au BufRead,BufNewFile *.jade set filetype=html
au BufRead,BufNewFile *.chtml set filetype=html
au BufRead,BufNewFile *.phtml set filetype=html
au BufRead,BufNewFile *.php.dist set filetype=php
autocmd Filetype javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab 
autocmd Filetype css setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab 
autocmd Filetype coffee setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab 
autocmd Filetype json setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab 
autocmd Filetype jade setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab 
autocmd Filetype html setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab 
autocmd Filetype phtml setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab 
autocmd Filetype php setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab 

" omni completion
filetype plugin on
set ofu=syntaxcomplete#Complete " Enable syntax completion?
set completeopt=longest,menuone		" Show longest match, at lest one option
inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
  \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

" file settings
set ai 
set si
set ignorecase " case-insenstive search 
set incsearch " incremental search 
set smartcase " do smart case matching
set showmatch " show matching brackets 

" Key mappings
nmap <F7> :tabprevious<CR>
nmap <F8> :tabnext<CR>
map <C-h> :tabprevious<CR>
map <C-l> :tabnext<CR>
nnoremap <D-up> :resize -5<CR>
nnoremap <D-down> :resize +5<CR>
nmap <F1> :NERDTreeToggle<CR>    " Ctrl+N to toggle                   
                                                                                
" PHP doc block                                                                 
inoremap <C-K> <ESC>:call PhpDocSingle()<CR>i                                   
nnoremap <C-K> :call PhpDocSingle()<CR>                                         
vnoremap <C-K> :call PhpDocRange()<CR>                                          

" Command-T
nmap <C-t> :CommandT<CR>
nmap <C-f> :CommandTFlush<CR>

" Aligns on equal sign
vmap <C-a> \t=<CR>
" Aligns on pipe = <bar>, for markdown tables
vmap <C-t> \t<bar><CR>

" clear search highlight
nmap <silent> ,, :noh<CR>

" copy and paste current line
nmap <C-p> <Esc>yyp

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

" auto change current dir to file that is open
" autocmd BufEnter * silent! lcd %:p:h
