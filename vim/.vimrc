set nocompatible              " be iMproved, required
filetype off                  " required
syntax on
set t_Co=256
set background=dark
set number
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent


colorscheme one

" For powerline
" set  rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim/
set laststatus=2
" For Airline

let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='atomic'




" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')
"
" let Vundle manage Vundle, required

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'mattn/emmet-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'w0rp/ale'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-notes'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" To make jsx work properly
let g:jsx_ext_required = 0

autocmd FileType html inoremap ;i <em></em><Space><++><Esc>Fet>i
"hi Normal ctermbg=none

" Nerd Tree 
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" emmet
let g:user_emmet_leader_key='<Tab>'
let g:user_emmet_settings = {
  \  'javascript.jsx' : {
    \      'extends' : 'jsx',
    \  },
  \}

