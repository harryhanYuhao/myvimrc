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

" Keymaps
nnoremap <F1> :w<CR>
