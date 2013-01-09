" Prep some variables for use with syntastic syntax checker
let g:syntastic_auto_loc_list=1
let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'

" Setup autotags for ctags
" let g:easytags_cmd = '/usr/local/bin/ctags'

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
" Bundle 'walm/jshint.vim'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-rails'
Bundle 'cschlueter/vim-clouds'
Bundle 'tsaleh/vim-align'
Bundle 'vim-scripts/Auto-Pairs'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'mattn/zencoding-vim'
Bundle 'benmills/vimux'
Bundle 'nelstrom/vim-markdown-folding'
Bundle 'vim-scripts/JavaScript-syntax'
Bundle 'tanabe/WriteJSDocComment.vim'
Bundle 'docunext/closetag.vim.git'
" Commmands: :UpdateTags -R . and :HighlightTags 
"
" Snipmate and dependencies
" Bundle 'xolox/vim-easytags'
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "honza/snipmate-snippets"
Bundle "garbas/vim-snipmate"

" syntax highlighting
Bundle "vim-pandoc/vim-pandoc"
Bundle 'vim-scripts/jade.vim'

" colorschemes
Bundle 'wgibbs/vim-irblack'
Bundle 'vim-scripts/tir_black'
Bundle 'matthewtodd/vim-twilight'
Bundle 'tomasr/molokai'
Bundle 'vim-scripts/billw.vim'
Bundle 'nelstrom/vim-blackboard'
Bundle 'ratazzi/blackboard.vim'

" vim-scripts repos
Bundle 'vim-scripts/AutoComplPop'
Bundle 'vim-scripts/Lucius'
Bundle 'vim-scripts/PDV--phpDocumentor-for-Vim'
Bundle 'vim-scripts/Rename'

Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'rails.vim'
Bundle 'noahfrederick/Hemisu'

" non-github repos
Bundle 'git://git.wincent.com/command-t.git'		


" 256 color term
set t_Co=256

if &t_Co > 2 || has("gui_running")
	syntax on
	" colorscheme hemisu
	" colorscheme lucius 
	" set background=dark
	" colorscheme molokai 
	" colorscheme blackboard
	colorscheme ratazzi 
	" colorscheme billw 
	" colorscheme Twilight 
	" colorscheme Clouds 
endif

" set background=dark

set tabstop=5 softtabstop=5 shiftwidth=5 noexpandtab
set number

set clipboard=unnamed	" Copy buffer to system clipboard
set mouse=r			
set mousefocus			" Follow mouse focus
set ttymouse=xterm2
set nobackup			" Do not keep a backup file
set noswapfile
set history=1000		" Keep 1000 lines of command line history
set hlsearch
" set cc=80				" highlight column 80 for visual 
" set paste				" format copy and paste from source

" Filetypes
au BufRead,BufNewFile *.json set filetype=javascript
au BufRead,BufNewFile *.md set filetype=markdown
au BufRead,BufNewFile *.scss set filetype=css
au BufRead,BufNewFile *.sass set filetype=css
au BufRead,BufNewFile *.less set filetype=css
au BufRead,BufNewFile *.styl set filetype=css
au BufRead,BufNewFile *.jade set filetype=html
au BufRead,BufNewFile *.cshtml set filetype=html
au BufRead,BufNewFile *.phtml set filetype=html
au BufRead,BufNewFile *.php.dist set filetype=php
au BufRead,BufNewFile *.md AcpDisable
autocmd Filetype javascript setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab 
autocmd Filetype css setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab 
autocmd Filetype coffee setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab 
autocmd Filetype json setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab 
autocmd Filetype jade setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab 
autocmd Filetype html setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab 
autocmd Filetype phtml setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab 
autocmd Filetype php setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab 
autocmd Filetype ruby setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab 
autocmd FileType html,cshtml let b:closetag_html_style=1
autocmd FileType html,cshtml source ~/.vim/bundle/closetag.vim/plugin/closetag.vim

" pandoc settings, markdown
let g:pandoc_no_folding = 1

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
nnoremap <F2> :set nonumber!<CR>

" AutoPairs
" let g:AutoPairs = {'{':'}'}                                                                     

" PHP doc block                                                                 
inoremap <C-K> <ESC>:call PhpDocSingle()<CR>i                                   
nnoremap <C-K> :call PhpDocSingle()<CR>                                         
vnoremap <C-K> :call PhpDocRange()<CR>                                          

" ctags
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <C-s> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
" jump to definition 
map <C-j> <C-]> 
" jump back to function call
map <C-b> <C-o> 

" Command-T
nmap <C-t> :CommandT<CR>
nmap <C-f> :CommandTFlush<CR>

" Command-T settings for iTerm
if &term =~ "xterm" || &term =~ "screen"
  let g:CommandTCancelMap     = ['<ESC>', '<C-c>']
  let g:CommandTSelectNextMap = ['<C-n>', '<C-j>', '<ESC>OB']
  let g:CommandTSelectPrevMap = ['<C-p>', '<C-k>', '<ESC>OA']
endif

" Aligns on equal sign
vmap <C-a> \t=<CR>

" Aligns on pipe = <bar>, for markdown tables
vmap <C-t> \t<bar><CR>

" clear search highlight
nmap <silent> ,, :noh<CR>

" copy and paste current line
nmap <C-p> <Esc>yyp

" aligning functions to view
" top
nmap mh <Esc>zt  
" mid
nmap mm <Esc>zz  
" low
nmap ml <Esc>zb  

" comments                                                             
au BufNewFile,BufRead * setlocal formatoptions+=or " show pwd in vim
au FileType javascript nnoremap <buffer> <C-c> :<C-u>call WriteJSDocComment()<CR>

if &term == "screen"
    set t_ts=^[k
    set t_fs=^[\
endif
if &term == "screen" || &term == "xterm"
    set title
endif

" to modify buffer, for search and replace, etc
set modifiable

autocmd BufEnter * let &titlestring = "vim " . expand("%:t") . " " . expand("%:h")

" auto change current dir to file that is open
" autocmd BufEnter * silent! lcd %:p:h

" tab hi lights
hi TabLineSel ctermbg=121 ctermfg=0

" folding 
nnoremap <Space> za


function! ShowFunc(sort)
let gf_s = &grepformat
let gp_s = &grepprg
if ( &filetype == "c" || &filetype == "php" || &filetype == "python" ||
			\ &filetype == "sh" )
	let &grepformat='%*\k%*\sfunction%*\s%l%*\s%f %m'
	let &grepprg = 'ctags -x --'.&filetype.'-types=f --sort='.a:sort
elseif ( &filetype == "perl" )
	let &grepformat='%*\k%*\ssubroutine%*\s%l%*\s%f %m'
	let &grepprg = 'ctags -x --perl-types=s --sort='.a:sort
elseif ( &filetype == "vim" )
	let &grepformat='%*\k%*\sfunction%*\s%l%*\s%f %m'
	let &grepprg = 'ctags -x --vim-types=f --language-force=vim --sort='.a:sort
endif
if (&readonly == 0) | update | endif
silent! grep %
cwindow 10
redraw
let &grepformat = gf_s
let &grepprg = gp_s
endfunc

noremap <F3> <Esc>:call ShowFunc("no")<CR><Esc>
noremap <S-F3> <Esc>:call ShowFunc("yes")<CR><Esc>

" auto correct
iab funciton function
