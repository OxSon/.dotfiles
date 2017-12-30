"""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" General
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible " enable vim features not compatible with vi

set lazyredraw " tell vim not to setredraw the screen during macros

set modelines=0 " prevent sec exploits having to do w/ modelines

set ruler " always show current pos

set showcmd " show cmds in bottom-right

"""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" User Interface
" 
"""""""""""""""""""""""""""""""""""""""""""""""""""""

set backspace=indent,eol,start " allow backspacing over everything in insert mode

if has('mouse') " enable mouse if terminal supports it
  set mouse=a   " 
endif		"

"""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Colors and Visual Settings
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""
if &t_Co > 2 || has("gui_running") " turn on syntax highlighting
  syntax on			               " 
endif				               " 

set number relativenumber " show relative line numbers in normal mode, except current line
:augroup numbertoggle     " and show absolute numbers in insert mode
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

set cursorline " highlight current line

"""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Tab settings
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""

set expandtab tabstop=4 shiftwidth=4 softtabstop=4 " expand tabs to 4 spaces

"""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Miscellaneous Bindings
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""
inoremap jj <ESC>

" following lines fix accidental 
" entering of 'help' mode
inoremap <F1> <ESC>
nnoremap <F!> <ESC>
vnoremap <F!> <ESC>
" following opens vertical split
" and switches to it
nnoremap <leader>w <C-w>v<C-w>l

"""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Searching & Moving
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""
set ignorecase smartcase " ignore case if search pattern
                         " is all lowercase; case sensitive
                         " if any upper case letters are present

set hlsearch showmatch incsearch " highlight searches and
                                 " and move cursor to match

set gdefault " default to global substitution rather than first occurence

" \<space> removes search highlighting
nnoremap <leader><space> :noh<cr>

" following lines make j and k move on visual lines
nnoremap j gj
"
nnoremap k gk
""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""
