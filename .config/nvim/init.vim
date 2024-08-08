for f in split(glob('~/.config/nvim/vim-plug/*.vim'), '\n')
    exe 'source' f
endfor
