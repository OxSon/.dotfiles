"""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" General
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible " enable vim features not compatible with vi

" following allows pathogen to manage
" 'runtimepath' for easy plug-in use
execute pathogen#infect()

set lazyredraw " tell vim not to setredraw the screen during macros

set ruler " always show current pos

set showcmd " show cmds in bottom-right

set number relativenumber " show relative line numbers in normal mode, except current line

"""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" User Interface
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""

set backspace=indent,eol,start " allow backspacing over everything in insert mode

 "if has('mouse') " enable mouse if terminal supports it
  "set mouse=a   "
 "endif		"

set wildmenu " autocomplete vim commands

"""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Colors and Visual Settings
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on			               "
set background=dark
colorscheme solarized

set cursorline " highlight current line

set colorcolumn=80 " vertical highlight @ 80 character width

"""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Tab settings and indentation
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""

set expandtab tabstop=4 shiftwidth=4 softtabstop=4 " expand tabs to 4 spaces

if has("autocmd")
    filetype plugin indent on
else
    set autoindent
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Miscellaneous Bindings
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""
inoremap JJ jj
inoremap jj <ESC>

" following lines fix accidental
" entering of 'help' mode
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

"""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Searching & Moving
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""
set ignorecase smartcase " ignore case if search pattern
                         " is all lowercase; case sensitive
                         " if any upper case letters are present

set hlsearch showmatch incsearch " highlight searches as characters
                                 " are typed and move cursor to match

set gdefault " default to global substitution rather than first occurence

" \<space> removes search highlighting
nnoremap <leader><space> :nohlsearch<cr>

" following lines make j and k move on visual lines
nnoremap j gj
nnoremap k gk

" following lines make <tab> move between
" matching bracket pairs outside of insert mode
nnoremap <tab> %
vnoremap <tab> %

" following lines remap B and E to move to
" beginning and end of line respectively,
" make verbs function correctly w/
" the new bindings and unbind
" the previous bindings
nnoremap B ^
nnoremap E $
nnoremap $ <nop>
nnoremap ^ <nop>
nnoremap dE d$
nnoremap yE y$
nnoremap dB d^
nnoremap yB y^
nnoremap cE c$
nnoremap cB c^

" quickly edit & reload
" .vimrc
nnoremap <leader>ec :vs $MYVIMRC<CR>
nnoremap <leader>rc :source $MYVIMRC<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""
