" Truly Vi(mproved), no VI-compability
set nocompatible

" Set up vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Bundle 'xoria256.vim'
Bundle 'Shougo/vimproc'
Bundle 'Shougo/unite.vim'
Bundle 'm2mdas/phpcomplete-extended'
Bundle 'ctrlpvim/ctrlp.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'Xuyuanp/nerdtree-git-plugin'
Bundle 'tpope/vim-fugitive'
call vundle#end()
filetype indent on

" look&feel
set number
color xoria256
syntax on

" tabs and indenting
set tabstop=4
set shiftwidth=4
set expandtab

" Turn off arrowkeys
noremap     <Up>    <Nop>
noremap     <Down>  <Nop>
noremap     <Left>  <Nop>
noremap     <Right> <Nop>

" Tell phpcomplete-extended to use the correct composer binary
let g:phpcomplete_index_composer_command='composer'

" Configure CTRL-P
let g:ctrlp_map='<c-p>'
let g:ctrl_cmd='CtrlP'

" Use , instead of \ as leader
let mapleader=','

" Toggle Nerdtree
map <C-e> :NERDTreeToggle<CR>
map <leader>e : NERDTreeToggle<CR>
" Let's use a common directory for all swaps and backups to avoid cluttering projects
set backupdir=~/.vim/backup
set directory=~/.vim/backup
