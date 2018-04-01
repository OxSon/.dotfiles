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

set modelines=0 " prevent sec exploits having to do w/ modelines

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

" following saves a session incl. multiple windows
" to be reopened with vim -S
nnoremap <leader>s :mksession<CR>

"NERDTree settings:
"open/close NERDTree
map <C-n> :NERDTreeToggle<CR>

" close NERDTree if its the only window left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Colors and Visual Settings
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on			               "
set background=dark
colorscheme solarized

let g:airline_theme='solarized'

:augroup numbertoggle     " and show absolute numbers in insert mode
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

set cursorline " highlight current line

set colorcolumn=80 " not working?

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
inoremap jj <ESC>

" following lines fix accidental
" entering of 'help' mode
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" following opens vertical split
" and switches to it
nnoremap <leader>w <C-w>v<C-w>l

" following opens my .vimrc in a vertical split
nnoremap <leader>ev :vs $MYVIMRC<cr>

" following sources .vimrc
nnoremap <leader>sv :source $MYVIMRC<cr>

"Strip trailing whitespace with F5
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

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

" following provides easy movement between
" code blocks
" FORWARD
nnoremap <leader>] ]}
vnoremap <leader>] ]}
" BACK
nnoremap <leader>[ [{
vnoremap <leader>[ [{

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
" following lines make moving
" between splits simpler
nnoremap <leader>j <C-w>j
nnoremap <leader>h <C-w>h
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l

nnoremap <C-j> <C-w>j
nnoremap <C-h> <C-w>h
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" quickly edit & reload
" .vimrc
nnoremap <leader>ec :vs ~/.vimrc<CR>
nnoremap <leader>rc :source ~/.vimrc<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""
