"jake Trimble's VIM settings "

" BASIC SETTINGS 

filetype on
filetype plugin on
filetype indent on
syntax on
colo darkblue
set noswapfile
set ruler
set backspace=indent,eol,start
set cursorline
set noerrorbells
set foldmethod=manual
set scrolloff=3
set rnu
set number
set smartindent

let mapleader = ","

nnoremap <leader>wr <c-w><c-w>
nnoremap <leader>vs :vsplit
nnoremap <leader>qq :wq<cr>

" COLORS

hi CursorLineNr ctermfg=118
hi MatchParen cterm=none ctermbg=yellow ctermfg=blue
hi Comment ctermfg=160
hi Number ctermfg=166 cterm=bold
hi Cursor ctermfg=192
hi Conditional ctermfg=76 cterm=bold
hi Boolean ctermfg=181
hi LineNr ctermfg=246

" SEARCH RELATED

set hlsearch
hi Search ctermbg=208 ctermfg=32
set incsearch

" FILETYPE IDENTATION SETTINGS

set list
set listchars=tab:»·
autocmd Filetype html setlocal sw=4 ts=4 sts=4
autocmd Filetype yaml setlocal sw=2 ts=2 sts=2 
autocmd Filetype py setlocal sw=4 ts=4 sts=4
autocmd Filetype css setlocal sw=4 ts=4 sts=4
autocmd Filetype javascript setlocal sw=2 ts=2 sts=2


" Map jk to <ESC> for easier insert mode exit

inoremap jk <esc>

" Keep all folds open when a file is opened 

augroup OpenAllFoldsOnFileOpen
	autocmd!
	autocmd BufRead * normal zR
augroup END

" Remapping j and k so wrapped lines are not skipped over 

nnoremap j gj
nnoremap k gk

" move to beginning and end of line 

nnoremap B ^
nnoremap E $

" $/^ set to not do anything 

nnoremap $ <nop>
nnoremap ^ <nop>

" Highlight last inserted text 

nnoremap gV `[v`]

" Space bar visually select world 

nnoremap <space> viw

" Insert mode commands

inoremap <c-d> <esc>ddi
inoremap <c-u> <esc>vU

" NERDTree

noremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" PYTHON RELATED
call plug#begin('~/.vim/plugged')

	Plug 'vim-airline/vim-airline'
	Plug 'preservim/nerdtree'
	Plug 'valloric/youcompleteme'
	Plug 'elzr/vim-json'
	Plug 'tpope/vim-surround'
	Plug 'sheerun/vim-polyglot'


call plug#end()


