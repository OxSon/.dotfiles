"basic defaults
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"call plug-ins before vimrc or nvim plugs will not work
call plug#begin()
    Plug 'iCyMind/NeoSolarized'
    Plug 'airodactyl/neovim-ranger'
    Plug 'airblade/vim-gitgutter'
    Plug 'itchyny/lightline.vim'
    Plug 'tpope/vim-fugitive'
    Plug 'Townk/vim-autoclose'
    Plug 'mboughaba/i3config.vim'
"    Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}
    Plug 'neovimhaskell/haskell-vim', { 'for': 'haskell' }
"    Plug 'tpope/vim-obsession'
    Plug 'rust-lang/rust.vim'
    
call plug#end()

""""""""""plug-in related settings""""""

"lightline
let g:lightline = {
    \ 'colorscheme': 'solarized',
    \ 'active': {
          \   'left': [ [ 'mode', 'paste' ],
          \             [ 'cocstatus', 'readonly', 'filename', 'modified' ] ]
          \ },
          \ 'component_function': {
          \   'cocstatus': 'coc#status'
          \ },
    \ }

"gitgutter
nnoremap <leader>f  :GitGutterFold<CR>
nnoremap <leader>h  :GitGutterNextHunk<CR>
nnoremap <leader>H  :GitGutterPrevHunk<CR>

"finally source vimrc
source ~/.vimrc
