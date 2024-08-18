set encoding=UTF-8
set number
set updatetime=30
set tabstop=4
set shiftwidth=4
set expandtab

"alt+c to close the current buffer
nnoremap <M-c> :bd<CR>

"ctrl+v to paste
nnoremap <C-v> "+gP
inoremap <C-v> <C-r>+
vnoremap <C-v> "+p

"ctrl+c to copy
nnoremap <C-c> "+y
vnoremap <C-c> "+y
