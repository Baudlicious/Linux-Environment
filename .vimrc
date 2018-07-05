set number relativenumber
syntax enable
set visualbell
set ruler
set hlsearch
autocmd FileType python setlocal autoindent softtabstop=4 tabstop=4 shiftwidth=4 expandtab

"Wrapped lines behave like normal lines when using j,k
nnoremap j gj
nnoremap k gk

"Ctrl-L to clear highlighting
nnoremap <C-L> :nohl<ESC><C-L>

"Based on file type save file and run it..
autocmd FileType rust map <buffer> <F5> <Esc>:w<CR>:!clear;cargo run<CR>
autocmd FileType python map <buffer> <F5> <Esc>:w<CR>:!clear;python3 %<CR>

" Escapes with the press of jk in insert mode 
inoremap jk <Esc> 

filetype plugin on

" Auto install plug if not present
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"Plug stuff
call plug#begin('~/.vim/plugged')
Plug 'rust-lang/rust.vim'
call plug#end()
