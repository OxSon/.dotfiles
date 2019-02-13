"basic defaults
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

"exit terminal mode with escape
tnoremap <Esc> <C-\><C-n>

source ~/.vimrc

call plug#begin()
call plug#end()
