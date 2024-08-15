set encoding=UTF-8
set number
set updatetime=30
set tabstop=4
set shiftwidth=4
set expandtab

"alt+c to close the current buffer
nnoremap <M-c> :bd<CR>

"Tự động tắt highlight khi nhấn phím Esc
function! ClearSearchHighlight()
  if !&hlsearch
    return
  endif
  nohlsearch
endfunction
autocmd ModeChanged *:[nv] call ClearSearchHighlight()

