set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'chriskempson/base16-vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
Plugin 'Tagbar' 
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlp.vim'
Plugin 'vim-scripts/cscope.vim'
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" skm : my custom
set t_Co=16
let base16colorspace=16
colorscheme base16-ocean
syntax on
" https://vi.stackexchange.com/questions/2162/why-doesnt-the-backspace-key-work-in-insert-mode
set backspace=indent,eol,start

" ctags : Alt-right/left to navigate forward/backward in the tags stack
map <M-Left> <C-T>
map <C-=> <C-]>

" nnoremap <leader>t :TagbarOpenAutoClose<cr>
nnoremap <F8> :TagbarOpenAutoClose<cr>
let tagbar_ctags_bin = '/users/shrkamat/softs/uni-ctags/bin/unictags'

set title

" NerdTree
set encoding=utf-8
nmap <silent> <special> <F2> :NERDTreeToggle<RETURN>
" map <F2> :NERDTreeToggle<CR>
" silent! nmap <F3> :NERDTreeToggle<CR>
" silent! map <F3> :NERDTreeFind<CR>

" let g:NERDTreeMapActivateNode="<F3>"
" let g:NERDTreeMapPreview="<F4>"
" cscope
nnoremap  <leader>/ :call cscope#find('s', expand('<cword>'))<CR>
nnoremap  <c-/> :call cscope#find('s', expand('<cword>'))<CR>

" highlight search
set hlsearch
