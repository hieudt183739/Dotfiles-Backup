" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Nerdtree"
    Plug 'scrooloose/nerdtree'
    Plug 'ryanoasis/vim-devicons'
    " Theme"
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'morhetz/gruvbox'
    " switch between tabs"
    Plug 'christoomey/vim-tmux-navigator'
    " Suggest code
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
 
    " Termial
    Plug 'voldikss/vim-floaterm' 
    " FZF
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    " sua dau ngoac trong vim
    Plug 'tpope/vim-surround'
    
    call plug#end()
