" First call pathogen
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

runtime! debian.vim
set nocompatible
syntax on

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

if has("autocmd")
  filetype plugin indent on
endif

set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
set hidden	        " Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes) in terminals
set wildmenu		" Bessere Auswahl bei Vervollständigung von Pfaden
set number		" Anzeige der Zeilennummern
set laststatus=2	" Statuszeile wird immer angezeigt
set completeopt=menu,longest
set ts=4
set sw=4

if has("gui")
  set guioptions-=T   " Toolbar ausblenden
endif

" Sinnvolle Bindungen für deutsche Tastaturen
map ü <C-]>
map ö [
map ä ]
map Ö {
map Ä }
map ß /
let maplocalleader = ","
let mapleader = ","

" SuperTab-Einstellungen
" let g:SuperTabDefaultCompletionType = "context"

" Rechtschreibung
set nospell
set spelllang=de_20,en
set spellsuggest=10
nmap <silent> <F7> :setlocal spell!<CR>
imap <silent> <F7> <C-O:setlocal spell!<CR>

" Einstellungen für die LaTeX-Suite
" let g:tex_flavor='latex'
" let g:Tex_UseUtfMenus=1
