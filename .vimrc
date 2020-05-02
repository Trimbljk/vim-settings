execute pathogen#infect()
filetype plugin indent on
colo darkblue
syntax on
set runtimepath^=~/.vim/bundle/vim-closetag/plugin/closetag.vim
set ruler
set backspace=indent,eol,start
set cursorline
set hlsearch
"Keep all folds open when a file is opened"
augroup OpenAllFoldsOnFileOpen
	autocmd!
	autocmd BufRead * normal zR
augroup END
set foldmethod=indent
syn keyword pythonInclude from import
syn keyword pythonOperator and in is not or
syn keyword pythonRepeat for while
hi Search ctermbg=208 ctermfg=12
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
