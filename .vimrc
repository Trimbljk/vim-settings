" Jake Trimble's VIM settings "

execute pathogen#infect()
set runtimepath^=~/.vim/bundle/vim-closetag/plugin/closetag.vim

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
set number

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

set list
set listchars=tab:»·

" FILETYPE IDENTATION SETTINGS

set list
set listchars=tab:»·
autocmd Filetype html setlocal sw=4 ts=4 sts=4
autocmd Filetype yaml setlocal sw=2 ts=2 sts=2 
autocmd Filetype py setlocal sw=4 ts=4 sts=4
autocmd Filetype css setlocal sw=4 ts=4 sts=4


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

" PYTHON RELATED

syn keyword pythonInclude from import
syn keyword pythonOperator and in is not or
syn keyword pythonRepeat for while
hi pythonInclude ctermfg=33
hi pythonOperator ctermfg=76 cterm=bold
hi pythonRepeat ctermfg=76 cterm=bold
hi pythonExtraOperator cterm=bold
syn match pythonExtraOperator "\%([~!^&|*/%+-]\|\%(class\s*\)\@<!<<\|<=>\|<=\|\%(<\|\<class\s\+\u\w*\s*\)\@<!<[^<]\@=\|===\|==\|=\~\|>>\|>=\|=\@<!>\|\*\*\|\.\.\.\|\.\.\|::\|=\)"
