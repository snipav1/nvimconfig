" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif
set nocompatible
set rnu nu
filetype off
filetype plugin indent on
call plug#begin('~/.config/nvim/autoload/plugged')
    Plug 'klen/python-mode'
    Plug 'Chiel92/vim-autoformat'
    Plug 'tpope/vim-fugitive'
    Plug 'blueshirts/darcula'
    Plug 'ThePrimeagen/vim-be-good'
    Plug 'scrooloose/nerdtree'
    Plug 'scrooloose/syntastic'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-repeat'
    Plug 'airblade/vim-gitgutter'
    Plug 'scrooloose/nerdcommenter'
    Plug 'kien/ctrlp.vim'
    Plug 'vim-airline/vim-airline'
    Plug 'morhetz/gruvbox'
    Plug 'sickill/vim-monokai'
	Plug 'github/copilot.vim'
call plug#end()
syntax enable
colorscheme monokai
set background=dark
imap jj <Esc>
let mapleader = " "
set tabstop=4
set softtabstop=4
set shiftwidth=4
" NERDTree
nmap <C-n> :NERDTreeToggle<CR>
" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_loc_list_height=3
let g:syntastic_python_checkers=['flake8']
map <F2> :<SyntasticCheck flake8 pylint<CR>
" Autoformat
noremap <F1> :Autoformat<CR>
" Python-Mode
let g:pymode_lint_on_fly = 0
" YCM
nnoremap <leader>d :YcmCompleter GoTo<CR>
" Jedi Vim
"let g:jedi#goto_command = "<leader>d"
let g:jedi#force_py_version=3
" Powerline
set rtp+=/usr/local/lib/python3.8/site-packages/powerline/bindings/vim
set laststatus=2
set t_Co=256
" UTC-8 Support
set encoding=utf-8
