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
    Plug 'neoclide/coc.nvim', {'branch': 'release', 'tag': '*', 'do': { -> coc#util#install()}}
    Plug 'altercation/vim-colors-solarized'
    Plug 'junegunn/seoul256.vim'
    "Plug 'iCyMind/NeoSolarized'
    Plug 'airodactyl/neovim-ranger'
    "Plug 'junegunn/goyo.vim'
    "Plug 'junegunn/limelight.vim'
    "    Plug 'airblade/vim-gitgutter'
    Plug 'itchyny/lightline.vim'
    "Plug 'tpope/vim-fugitive'
    Plug 'Townk/vim-autoclose'
    Plug 'mboughaba/i3config.vim'
    "Plug 'mxw/vim-jsx'
    Plug 'pangloss/vim-javascript'
    Plug'octol/vim-cpp-enhanced-highlight'
"    Plug 'neovimhaskell/haskell-vim', { 'for': 'haskell' }
"    Plug 'rust-lang/rust.vim'
    
call plug#end()

""""""""""plug-in related settings""""""

"Limelight support for solarized
"let g:limelight_conceal_ctermfg = 'black'

" auto turn on limelight when goyo is on
"function! s:goyo_enter()
"  set noshowmode
"  set noshowcmd
"  set scrolloff=999
  Limelight
  " ...
"endfunction

"function! s:goyo_leave()
"  set showmode
"  set showcmd
"  set scrolloff=5
"  Limelight!
  " ...
"endfunction

"autocmd! User GoyoEnter nested call <SID>goyo_enter()
"autocmd! User GoyoLeave nested call <SID>goyo_leave()

"CoC completion
inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
" Use <c-space> for trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

"lightline
let g:lightline = {
    \ 'colorscheme': 'solarized',
    \ 'active': {
          \   'left': [ [ 'mode', 'paste' ],
          \             [ 'cocstatus', 'currentfunction', 'readonly', 'filename', 'modified' ] ]
          \ },
          \ 'component_function': {
          \   'cocstatus': 'coc#status',
          \   'currentfunction': 'CocCurrentFunction'
          \ },
          \ }

" Plain text
" ==========
" func! WordProcessorMode()
    setlocal formatoptions-=t
    setlocal textwidth=80
    map <buffer> j gj
    map <buffer> k gk
    setlocal smartindent
    setlocal spell spelllang=en_gb
    setlocal noexpandtab
    setlocal nocursorline
    setlocal wrap
    setlocal linebreak
    colorscheme seoul256
"    Goyo
endfu

" autocommands
" ============
if has("autocmd")

  " In Makefiles, use real tabs, not tabs expanded to spaces
  augroup VimRCDefaults
      au!
      au FileType make set noexpandtab

      au FileType text call WordProcessorMode()
      au FileType text call WordProcessorMode()
      au FileType markdown call WordProcessorMode()
      au FileType text call WordProcessorMode()
      au FileType help set nospell
  augroup END
endif


"gitgutter
"nnoremap <leader>f  :GitGutterFold<CR>
"nnoremap <leader>h  :GitGutterNextHunk<CR>
"nnoremap <leader>H  :GitGutterPrevHunk<CR>

"Format buffer using Prettier CoC extension
command! -nargs=0 Prettier :CocCommand prettier.formatFile

"Range format as above
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

"get correct jsonc comment syntax highlighting (primarily for coc.nvim config file)
autocmd FileType json syntax match Comment +\/\/.\+$+

"finally source vimrc
source ~/.vimrc
