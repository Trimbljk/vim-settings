" Jake Trimble's VIM settings "

" Basic Settings"

filetype plugin indent on
syntax on
colo darkblue
set noswapfile
set ruler
set backspace=indent,eol,start
set cursorline
set noerrorbells
set foldmethod=indent

execute pathogen#infect()
" Search Related "

set hlsearch
hi Search ctermbg=218 ctermfg=32

" Spell Checking "

set spell
set spelllang=en

set runtimepath^=~/.vim/bundle/vim-closetag/plugin/closetag.vim
" Map jk to <ESC> for easier Normal mode "

inoremap jk <esc>

" Keep all folds open when a file is opened "
augroup OpenAllFoldsOnFileOpen
	autocmd!
	autocmd BufRead * normal zR
augroup END

" Remapping j and k so wrapped lines are not skipped over "

nnoremap j gj
nnoremap k gk

" move to beginning and end of line "

nnoremap B ^
nnoremap E $

" $/^ set to not do anything "

nnoremap $ <nop>
nnoremap ^ <nop>

" Highlight last inserted text "

nnoremap gV `[v`]
syn keyword pythonInclude from import
syn keyword pythonOperator and in is not or
syn keyword pythonRepeat for while
hi CursorLineNr ctermfg=118
hi LineNr ctermfg=209
hi Comment ctermfg=160
hi Number ctermfg=166 cterm=bold
hi Cursor ctermfg=192
hi Conditional ctermfg=76 cterm=bold
hi Boolean ctermfg=181
hi pythonInclude ctermfg=33
hi String ctermfg=Magenta
hi pythonOperator ctermfg=76 cterm=bold
hi pythonRepeat ctermfg=76 cterm=bold
syn match pythonExtraOperator "\%([~!^&|*/%+-]\|\%(class\s*\)\@<!<<\|<=>\|<=\|\%(<\|\<class\s\+\u\w*\s*\)\@<!<[^<]\@=\|===\|==\|=\~\|>>\|>=\|=\@<!>\|\*\*\|\.\.\.\|\.\.\|::\|=\)"
hi pythonExtraOperator cterm=bold
