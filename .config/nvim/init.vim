"basic defaults
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

"call plug-ins before vimrc or nvim plugs will not work
call plug#begin()
    Plug 'iCyMind/NeoSolarized'
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'airodactyl/neovim-ranger'
    Plug 'airblade/vim-gitgutter'
    Plug 'itchyny/lightline.vim'
    Plug 'tpope/vim-fugitive'
    Plug 'Townk/vim-autoclose'
    Plug 'artur-shaik/vim-javacomplete2', { 'for': 'java' }
    Plug 'neovimhaskell/haskell-vim', { 'for': 'haskell' }
    
call plug#end()

""""""""""plug-in related settings""""""

"deoplete
let g:deoplete#enable_at_startup = 1
call deoplete#custom#option('smart_case', v:true)
"completion
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"

"FIXME something behaving strangely here
"jcomplete2
autocmd FileType java setlocal omnifunc=javacomplete#Complete
"enable smart (trying to guess import option) inserting class imports with F4
nmap <F4> <Plug>(JavaComplete-Imports-AddSmart)
imap <F4> <Plug>(JavaComplete-Imports-AddSmart)

"enable usual (will ask for import option) inserting class imports with F5, add:
nmap <F5> <Plug>(JavaComplete-Imports-Add)
imap <F5> <Plug>(JavaComplete-Imports-Add)

"add all missing imports with F6:
nmap <F6> <Plug>(JavaComplete-Imports-AddMissing)
imap <F6> <Plug>(JavaComplete-Imports-AddMissing)

"remove all unused imports with F7:
nmap <F7> <Plug>(JavaComplete-Imports-RemoveUnused)
imap <F7> <Plug>(JavaComplete-Imports-RemoveUnused)

"lightline
let g:lightline = {
    \ 'colorscheme': 'solarized'
    \ }

"gitgutter
nnoremap <leader>f  :GitGutterFold<CR>
nnoremap <leader>h  :GitGutterNextHunk<CR>
nnoremap <leader>H  :GitGutterPrevHunk<CR>

"finally source vimrc
source ~/.vimrc
