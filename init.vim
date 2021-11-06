" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Themes
Plug 'arcticicestudio/nord-vim'
 
" Plugins
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'pangloss/vim-javascript'
Plug 'dense-analysis/ale'
 
call plug#end()

colorscheme nord
 
nnoremap <C-p> :Rooter \| Files <CR>
set termguicolors
set shiftwidth=4
set tabstop=4
set expandtab

let g:ale_fixers = {
 \ 'javascript': ['eslint']
 \ }
 
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'

let g:ale_fix_on_save = 1
let g:ale_sign_column_always = 1
