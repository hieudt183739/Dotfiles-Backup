" theme - use it like vscode theme
lua << EOF
require("vscode_modern").setup({
    cursorline = true,
    transparent_background = false,
    nvim_tree_darker = true,
})
vim.cmd.colorscheme("vscode_modern")
EOF

" background color 
highlight Normal ctermbg=black guibg=#1F1F1F

"air-line
let g:airline_powerline_fonts = 1
let g:airline_theme='dark'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#right_sep = '|'
let g:airline#extensions#tabline#right_alt_sep = ' '
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#branch#enabled = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ' '

" alt+1-8 để điều hướng
nmap <M-1> <Plug>AirlineSelectTab1
nmap <M-2> <Plug>AirlineSelectTab2
nmap <M-3> <Plug>AirlineSelectTab3
nmap <M-4> <Plug>AirlineSelectTab4
nmap <M-5> <Plug>AirlineSelectTab5
nmap <M-6> <Plug>AirlineSelectTab6
nmap <M-7> <Plug>AirlineSelectTab7
nmap <M-8> <Plug>AirlineSelectTab8
imap <M-1> <Esc><Plug>AirlineSelectTab1
imap <M-2> <Esc><Plug>AirlineSelectTab2
imap <M-3> <Esc><Plug>AirlineSelectTab3
imap <M-4> <Esc><Plug>AirlineSelectTab4
imap <M-5> <Esc><Plug>AirlineSelectTab5
imap <M-6> <Esc><Plug>AirlineSelectTab6
imap <M-7> <Esc><Plug>AirlineSelectTab7
imap <M-8> <Esc><Plug>AirlineSelectTab8

" alt + 9 để chuyển đến buf cuối cùng
nnoremap <silent> <M-9> :blast<CR>
inoremap <silent> <M-9> <Esc>:blast<CR>
