" 
" Using:
" Plugin manager: https://github.com/junegunn/vim-plug
" Code Completion/syntax: https://github.com/neoclide/coc.nvim
"

set nocompatible
filetype off

call plug#begin('~/.config/nvim/plugged')
Plug 'morhetz/gruvbox'    " theme manger
Plug 'tpope/vim-fugitive' " git integration
Plug 'preservim/nerdtree' " display files like in vscode
Plug 'ctrlpvim/ctrlp.vim' " fzf files 
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Code Completion
call plug#end()

colorscheme gruvbox
map <silent> <C-n> :NERDTreeFocus<CR>
