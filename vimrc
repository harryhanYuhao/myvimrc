set number
set relativenumber

" set cursor to line in insert mode
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" reset the cursor on start (for older versions of vim, usually not required)
"augroup myCmds
"au!
"autocmd VimEnter * silent !echo -ne "\e[2 q"
"augroup END

colorscheme habamax

set tabstop=4
set shiftwidth=4

syntax on
set hlsearch
set ignorecase
set smartcase

filetype plugin indent on
" setlocal spell spelllang=en_gb

" Keymaps
" Set mapleader. Refering it as <leader>
let g:mapleader=" "
" <F1> originally maps to open help doc, equivalent to :h

nnoremap <F1> :w<CR>
inoremap <F1> <Esc>:w<CR>
nnoremap <leader>s :w<CR>:source %<CR>

" custom commands

command W w

" Plugins
call plug#begin()

Plug 'derekelkins/agda-vim'
Plug 'kaarmu/typst.vim', { 'for': 'typst' }

call plug#end()
