"basic defaults
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

source ~/.vimrc

call plug#begin()
    Plug 'iCyMind/NeoSolarized'
call plug#end()
