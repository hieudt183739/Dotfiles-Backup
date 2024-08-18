" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Nerdtree"
    Plug 'scrooloose/nerdtree'
    Plug 'ryanoasis/vim-devicons'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    " Theme"
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'morhetz/gruvbox'
    Plug 'Mofiqul/vscode.nvim'
    Plug 'gmr458/vscode_modern_theme.nvim'
    " switch between windows"
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
    " Syntax highlight
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    " Git/Github
    "
    Plug 'kdheepak/lazygit.nvim'
    Plug 'lewis6991/gitsigns.nvim'
    " Markdown preview
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npx --yes yarn install' }

    call plug#end()
