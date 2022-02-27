"""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" General
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""

" following allows pathogen to manage
" 'runtimepath' for easy plug-in use
" execute pathogen#infect()

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

set complete-=i "disable

if has('mouse') " enable mouse if terminal supports it
    set mouse=a   "
endif

set wildmenu " autocomplete vim commands

"""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Colors and Visual Settings
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on

"workaround for background-color erase issues with kitty term
let &t_ut=''
set background=dark

"switch between dark and light themes
nnoremap <leader><space>l :set background=light<CR>
nnoremap <leader><space>d :set background=dark<CR>

colorscheme solarized
"if has('nvim')
"    colorscheme NeoSolarized
"else
"    colorscheme solarized
"endif
"colorscheme wal
"colorscheme waltest

set cursorline " highlight current line

set colorcolumn=85 " vertical highlight @ N character width

if has('nvim')
else
    set listchars=tab:>-,trail:-
endif

set list

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
" Bash like keys for the command line
cnoremap <C-A>		<Home>
cnoremap <C-E>		<End>
cnoremap <C-K>		<C-U>

cnoremap <C-P> <Up>
cnoremap <C-N> <Down>

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

" easier navigation of splits
nnoremap <leader>j <C-w>j
nnoremap <leader>h <C-w>h
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l
"""""""""""""""""""""""""""""""""""""""""""""""""""""
