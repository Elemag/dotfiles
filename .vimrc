if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  set runtimepath+=/home/gad/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('/home/gad/.vim/bundle'))

NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'bling/vim-airline'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'kien/ctrlp.vim'

call neobundle#end()
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

colorscheme molokai

syntax on
set background=dark
set hlsearch
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set ignorecase
set laststatus=2

highlight MatchParen cterm=bold ctermbg=none ctermfg=magenta gui=bold guibg=NONE guifg=magenta

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

au Filetype ruby setlocal ts=2 sts=2 sw=2
au Filetype javascript setlocal ts=2 sts=2 sw=2
au Filetype java setlocal ts=4 sts=4 sw=4

au BufRead,BufNewFile *.hs set ft=haskell
