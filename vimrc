execute pathogen#infect()

set nocompatible      " We're running Vim, not Vi!
syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins
filetype plugin indent on

let g:airline_section_z = airline#section#create(['sw:%{&shiftwidth}'])

syntax enable
set background=dark
colorscheme solarized

set hidden
let mapleader = ","
nnoremap <leader>b :b#<cr>
