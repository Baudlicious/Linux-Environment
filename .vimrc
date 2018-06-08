syntax enable
set number relativenumbers

set tabstop=4
set softtabstop=4
set expandtab

set incsearch
set hlsearch
nnoremap <C-L> :noh<CR><C-L>

nnoremap j gj
nnoremap k gk

imap jj <ESC>

set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

hi Search ctermbg=DarkCyan
