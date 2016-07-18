set nocompatible      " We're running Vim, not Vi!
filetype off          " Enable filetype detection

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Load Plugins
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-sleuth'
Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-sensible'
Plugin 'scrooloose/nerdtree'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Configuration section
let g:airline_section_z = airline#section#create(['sw:%{&shiftwidth}'])

syntax enable
set background=dark
colorscheme solarized

set hidden
let mapleader = ","
nnoremap <leader>b :b#<cr>
nnoremap <leader>n :NERDTreeToggle<cr>
