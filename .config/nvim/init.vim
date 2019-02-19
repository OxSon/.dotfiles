"basic defaults
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

"call plug-ins before vimrc or nvim plugs will not work
call plug#begin()
    Plug 'iCyMind/NeoSolarized'
    Plug 'airodactyl/neovim-ranger'
    Plug 'airblade/vim-gitgutter'
    Plug 'itchyny/lightline.vim'
    Plug 'tpope/vim-fugitive'
    Plug 'Townk/vim-autoclose'
    Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}
    Plug 'neovimhaskell/haskell-vim', { 'for': 'haskell' }
    Plug 'tpope/vim-obsession'
    
call plug#end()

""""""""""plug-in related settings""""""

"completion
inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
" Use <c-space> for trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> for confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

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
