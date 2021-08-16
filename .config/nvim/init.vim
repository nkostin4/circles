syntax on

" autocmd TextChanged,TextChangedI * silent write

set viminfo='100,<0,s10,h

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set incsearch
set smartcase
set clipboard+=unnamedplus

" map I :! latexmk -pdf %<CR><CR>
" map S :! zathura $(echo %\| sed 's/tex$/pdf/') & disown<CR><CR>

if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/plugged')

Plug 'ap/vim-css-color'
Plug 'lervag/vimtex'
let g:tex_flavor = 'latex'

call plug#end()
