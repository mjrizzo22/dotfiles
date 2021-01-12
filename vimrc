"Vim Config File
"Author: Mike Rizzo

"vim-plug auto-install
if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs \https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source ~/.vimrc
endif

"vim-plug list
call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'tmhedberg/SimplyFold'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()

set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

filetype on

set termguicolors
colo gruvbox

syntax on
set number

set foldmethod=indent
set foldlevel=99
nnoremap <space> za

set tabstop=2
set softtabstop=2
set shiftwidth=2
set textwidth=79	
set colorcolumn=79
set expandtab
set autoindent 
set fileformat=unix

au BufNewFile,BufRead *.py
	\ set tabstop=4
	\ | set softtabstop=4
	\ | set shiftwidth=4
