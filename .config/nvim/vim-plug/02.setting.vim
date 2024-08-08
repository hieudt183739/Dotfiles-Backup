set encoding=UTF-8
set number

set updatetime=300
set tabstop=4
set shiftwidth=4
set expandtab

" sử dụng Ctrl+C để copy văn bản vào clipboard
vmap <C-c> :w !xclip -selection clipboard<CR><CR>
