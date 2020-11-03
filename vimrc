set nocompatible      " We're running Vim, not Vi!
filetype off          " Enable filetype detection

" bootstrap vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" set the runtime path to include Vundle and initialize
call plug#begin()

" Load Plugins
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-sleuth'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-sensible'
Plug 'scrooloose/nerdtree'
Plug 'Valloric/YouCompleteMe'
Plug 'derekwyatt/vim-fswitch'
Plug 'leafgarland/typescript-vim'
Plug 'morhetz/gruvbox'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-fugitive'

" All of your Plugins must be added before the following line
call plug#end()              " required
filetype plugin indent on    " required

" Configuration section
let g:airline_section_z = airline#section#create(['sw:%{&shiftwidth}'])

syntax enable
set background=dark
set t_Co=256
colorscheme gruvbox

set hidden
let mapleader = ","
nnoremap <leader>b :b#<cr>
nnoremap <leader>n :NERDTreeToggle<cr>
nnoremap <leader>f :FSHere<cr>
nnoremap <leader>g :YcmCompleter GoTo<CR>
nnoremap <leader>m :make -C build<CR>
nnoremap <leader>e :cn<CR>
nnoremap <PageDown> :e<CR> G

map ,e :e <C-R>=expand("%:p:h") . "/" <CR>
