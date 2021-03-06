se nocompatible
filetype off


set rtp+=~/.vim/bundle/vundle
set rtp+=~/.fzf
call vundle#rc()
" execute pathogen#infect()

filetype plugin indent on

" My Bundles
" ==================================================================
" Original repos on github
Bundle 'gmarik/vundle'
Bundle 'Lokaltog/vim-easymotion'				
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}		
Bundle 'vim-scripts/tComment'
Bundle 'scrooloose/nerdtree'
Bundle 'kchmck/vim-coffee-script'
Bundle 'walm/jshint.vim'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-rails'
Bundle 'cschlueter/vim-clouds'
Bundle 'tsaleh/vim-align'
Bundle 'vim-scripts/Auto-Pairs'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'nelstrom/vim-markdown-folding'
Bundle 'vim-scripts/JavaScript-syntax'
Bundle 'd28/WriteJSDocComment.vim'
Bundle 'docunext/closetag.vim.git'
Bundle 'majutsushi/tagbar.git'
"utilities
Bundle 'rking/ag.vim'
Bundle 'junegunn/fzf.vim'
" for previwing md files in browser
Bundle "greyblake/vim-preview"
Bundle 'milkbikis/powerline-bash'
Bundle 'tpope/vim-liquid'
Bundle 'Lokaltog/vim-powerline'
Bundle 'mattr555/vim-instacode'
Bundle 'maxbrunsfeld/vim-yankstack'
" multi-row edit
Bundle 'terryma/vim-multiple-cursors'
" opens file in browser"
Bundle 'd28/vim-markdown-preview'

" Snipmate and dependencies
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
Bundle 'ap/vim-css-color'
Bundle 'git://github.com/d28/snipmate-snippets.git'
Bundle 'claco/jasmine.vim'
		

" syntax highlighting
Bundle 'vim-scripts/jade.vim'

" colorschemes
Bundle 'vim-scripts/ScrollColors'
Bundle 'wgibbs/vim-irblack'
Bundle 'vim-scripts/tir_black'
Bundle 'matthewtodd/vim-twilight'
Bundle 'tomasr/molokai'
Bundle 'vim-scripts/billw.vim'
Bundle 'nelstrom/vim-blackboard'
Bundle 'ratazzi/blackboard.vim'
Bundle 'oguzbilgic/sexy-railscasts-theme'
Bundle 'cange/vim-theme-cange'
Bundle 'altercation/vim-colors-solarized'

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

" vimux 
Bundle 'benmills/vimux'


" Colors
" ==================================================================
set t_Co=256	" 256 colors
let g:solarized_termcolors=256

if &t_Co > 2 || has("gui_running")
	syntax on
	" colorscheme hemisu
	" colorscheme lucius 
	set background=light
	" colorscheme molokai 
	colorscheme solarized 
	" colorscheme summerfruit256
	" colorscheme blackboard
	" colorscheme ratazzi 
	" colorscheme tir_black 
	" colorscheme sexy-railscasts
	" colorscheme billw 
	" colorscheme Twilight 
	" colorscheme Clouds 
endif


" tab hi lights. Rossi color chartreuse for bg
" hi TabLineSel ctermbg=152 ctermfg=220	

set tabstop=2 softtabstop=2 shiftwidth=2 noexpandtab
set clipboard=unnamed	" Copy buffer to system clipboard
set mouse=r			
set mousefocus			" Follow mouse focus
set ttymouse=xterm2
set nobackup			" Do not keep a backup file
set noswapfile
set history=1000		" Keep 1000 lines of command line history
set hlsearch
set modifiable			" to modify buffer, for search and replace, etc
" set cc=80				" highlight column 80 for visual 
" set paste				" format copy and paste from source



" Filetypes
" ==================================================================
au BufRead,BufNewFile *.json set filetype=javascript
au BufRead,BufNewFile *.js,*.spec.js set filetype=javascript
au BufRead,BufNewFile *.json,*.js,*.html,*.coffee setlocal foldmethod=indent
au BufRead,BufNewFile *.md set filetype=markdown
au BufRead,BufNewFile *.scss set filetype=css
au BufRead,BufNewFile *.sass set filetype=css
au BufRead,BufNewFile *.less set filetype=css
au BufRead,BufNewFile *.styl set filetype=css
au BufRead,BufNewFile *.jade set filetype=html
au BufRead,BufNewFile *.cshtml set filetype=html
au BufRead,BufNewFile *.phtml set filetype=html
au BufRead,BufNewFile *.aspx set filetype=html
au BufRead,BufNewFile *.zsh-theme set filetype=conf
au BufRead,BufNewFile *.php.dist set filetype=php
au BufRead,BufNewFile *.md AcpDisable
au Filetype javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab 
au Filetype css setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab 
au Filetype markdown setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab 
au Filetype coffee setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab 
au Filetype json setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab 
au Filetype jade setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab 
au Filetype html setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab 
au Filetype phtml setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab 
au Filetype php setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab 
au Filetype ruby setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab 
au FileType html,cshtml let b:closetag_html_style=1
au FileType html,cshtml source ~/.vim/bundle/closetag.vim/plugin/closetag.vim

au BufNewFile,BufRead * setlocal formatoptions+=or " show pwd in vim

" set title string on screen
" autocmd BufEnter * let &titlestring = "vim " . expand("%:t") . " " . expand("%:h")

" auto source vimrc when I save
" if has("autocmd")
	" autocmd bufwritepost .vimrc source $MYVIMRC
" endif

" force setting line number


" auto change current dir to file that is open
" autocmd BufEnter * silent! lcd %:p:h



" folding 
" ==================================================================
nnoremap <Space> za
" pandoc settings, markdown
" let g:pandoc_no_folding = 1

" Omni/auto completion / neocomplcache
" ==================================================================
filetype plugin on
set ofu=syntaxcomplete#Complete " Enable syntax completion?
set completeopt=longest,menuone		" Show longest match, at lest one option

" Tab completion
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
" autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
" autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS


" file settings
" ==================================================================
set ai 
set si
set ignorecase " case-insenstive search 
set incsearch " incremental search 
set smartcase " do smart case matching
set showmatch " show matching brackets 


" Whitespace
" ==================================================================
set nowrap                      " don't wrap lines
set backspace=indent,eol,start  " backspace through everything in insert mode


" Rebind/Key mappings
" ==================================================================
let mapleader = " "
let g:EasyMotion_leader_key = ';'
let g:multichange_mapping = '_m'
nnoremap <Tab> <Esc>

" Vimux
map <Leader>vp :VimuxPromptCommand<CR>
map <Leader>vl :VimuxRunLastCommand<CR>
map <Leader>vi :VimuxInspectRunner<CR>
map <Leader>vq :VimuxCloseRunner<CR>

" JSHint
nnoremap <C-j> :JSHint<CR>

" AutoPairs
let g:AutoPairs = {'{':'}'}  

nnoremap <C-n> :call NumberToggle()<CR>

" yankstack 
nmap <leader>y <Plug>yankstack_substitute_older_paste
nmap <leader>Y <Plug>yankstack_substitute_newer_paste

" toggle autocomplete
nmap <leader>ae :AcpEnable<CR>
nmap <leader>ad :AcpDisable<CR>

" shortcut to edit vimrc
" nmap <leader>v :tabe $MYVIMRC<CR>
nmap <F7> :tabprevious<CR>
nmap <F8> :tabnext<CR>
map <C-h> :tabprevious<CR>
map <C-l> :tabnext<CR>
nnoremap <D-up> :resize -5<CR>
nnoremap <D-down> :resize +5<CR>
" nmap <F1> :NERDTreeToggle<CR>    
nmap <leader>n :NERDTreeToggle<CR>    
nnoremap <F2> :set nonumber!<CR>
" Aligns on equal sign
vmap <C-a> <leader>t=<CR>

" Aligns on pipe = <bar>, for markdown tables
vmap <C-t> <leader>t<bar><CR>

" clear search highlight
nmap <leader>/ :noh<CR>

" comment current line
nmap <C-g> <Esc>gcc

" copy and paste current line
nmap <leader>p <Esc>yyp

" aligning functions to view
" top
nmap mh <Esc>zt  
" mid
nmap mm <Esc>zz  
" low
nmap ml <Esc>zb  

" Powerline 
" ==================================================================
let g:loaded_netrwPlugin=1      " disable netrw plugin
let g:Powerline_symbols='fancy' " disable netrw plugin

" GUI
" ==================================================================
set guioptions-=T               " Toggle off toolbar
" set guifont=Mensch\ for\ Powerline:h13
set guifont=Mensch\ for\ Powerline:h13
set linespace=2



" tagbar
let g:tagbar_usearrow = 1
let g:tagbar_autofocus = 1
nnoremap <leader>l :TagbarToggle<CR>

" Command-T
" ==================================================================
nmap <C-t> :CommandT<CR>
nmap <C-f> :CommandTFlush<CR>
nmap <C-b> :CommandTBuffer<CR>
let g:CommandTAcceptSelectionSplitMap='<C-s>'

" Command-T settings for iTerm
if &term =~ "xterm" || &term =~ "screen"
  let g:CommandTCancelMap     = ['<ESC>', '<C-c>']
  let g:CommandTSelectNextMap = ['<C-n>', '<C-j>', '<ESC>OB']
  let g:CommandTSelectPrevMap = ['<C-p>', '<C-k>', '<ESC>OA']
endif

"" Listing
set wildignore+=*/tmp/*,*.so,*.swp,*/node_modules/*
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'


" Comments                                                             
" ==================================================================
au FileType javascript nnoremap <buffer> <C-c> :<C-u>call WriteJSDocComment()<CR>
" PHP doc block                                                                 
inoremap <C-K> <ESC>:call PhpDocSingle()<CR>i                                   
nnoremap <C-K> :call PhpDocSingle()<CR>                                         
vnoremap <C-K> :call PhpDocRange()<CR>                                          

if &term == "screen"
    set t_ts=^[k
    set t_fs=^[\
endif
if &term == "screen" || &term == "xterm"
    set title
endif

" auto correct
iab funciton function

" Functions 
" ==================================================================
" Toggle line numbering
function! NumberToggle()
	if(&relativenumber == 1)
		set number 
	else 
		set relativenumber
		set ignorecase
	endif
endfunc

nnoremap <Leader>d Go<ESC>"=strftime("%Y-%m-%d %H:%M:%S  ")<CR>PA

" force setting line numbers
set nonumber
set number
set laststatus=2

