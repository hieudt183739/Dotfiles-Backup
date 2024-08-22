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

"alt+. to go back buffer
nnoremap <silent> <A-.> :b#<CR>
inoremap <silent> <A-.> <Esc>:b#<CR>a

"alt+h/j/k/l để điều kiển con trỏ ở chế độ insert
inoremap <A-h> <Left>
inoremap <A-j> <Down>
inoremap <A-k> <Up>
inoremap <A-l> <Right>

" alt+backspace to remove a word in insert mode
inoremap <M-BS> <C-w>
