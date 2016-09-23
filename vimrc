set nocompatible      " We're running Vim, not Vi!
filetype off          " Enable filetype detection

"Vundle bootstrap
if !filereadable($HOME . '/.vim/bundle/vundle/.git/config') && confirm("Clone Vundle?","Y\nn") == 1
    exec '!git clone https://github.com/gmarik/Vundle.vim ~/.vim/bundle/vundle/'
endif

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Load Plugins
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-sleuth'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-sensible'
Plugin 'scrooloose/nerdtree'
Plugin 'Valloric/YouCompleteMe'
Plugin 'derekwyatt/vim-fswitch'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Configuration section
let g:airline_section_z = airline#section#create(['sw:%{&shiftwidth}'])

let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'  

syntax enable
set background=dark
colorscheme solarized

set hidden
let mapleader = ","
nnoremap <leader>b :b#<cr>
nnoremap <leader>n :NERDTreeToggle<cr>
nnoremap <leader>f :FSHere<cr>
nnoremap <leader>g :YcmCompleter GoTo<CR>
nnoremap <leader>m :make -C build<CR>
nnoremap <leader>e :cn<CR>
