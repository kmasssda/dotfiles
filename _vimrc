"NeoBundle Scripts-----------------------------
"
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath^=/Users/maskyo/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('/Users/maskyo/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'slim-template/vim-slim'
NeoBundle 'thinca/vim-ref'

NeoBundle 'scrooloose/nerdtree'
let NERDTreeShowHidden = 1
nnoremap <C-l>      :<C-u>NERDTree<CR>

"NeoBundle 'Shougo/unite.vim'

NeoBundle 'Shougo/vimproc', {
  \ 'build' : {
    \ 'windows' : 'make -f make_mingw32.mak',
    \ 'cygwin' : 'make -f make_cygwin.mak',
    \ 'mac' : 'make -f make_mac.mak',
    \ 'unix' : 'make -f make_unix.mak',
  \ },
\ }
NeoBundle 'aharisu/vim_goshrepl'
vmap <CR> <Plug>(gosh_repl_send_block)

" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------

"config NeoBundle 'ctrlpvim/ctrlp.vim'
let g:ctrlp_mruf_max = 500
let g:ctrlp_max_height = 30
let g:ctrlp_cache_dir = $HOME.'/.cache/ctrlp'
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_show_hidden = 1

set nocompatible
set number
set cursorline
set laststatus=2
set cmdheight=2
set showmatch
set helpheight=999
set list
set backspace=indent,eol,start
set scrolloff=8
set sidescrolloff=16
set sidescroll=1
set confirm
set hidden
nnoremap <LEFT> :bp<CR>
nnoremap <RIGHT> :bn<CR>
set autoread
set nobackup
set noswapfile
set hlsearch
set incsearch
set ignorecase
set smartcase
set wrapscan
set gdefault
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set smartindent
set tags=./tags;
syntax on
set clipboard=unnamed,unnamedplus
noremap <CR> o<ESC>
set mouse=a
set shellslash
set wildmenu wildmode=list:longest,full
set history=10000
set visualbell t_vb=
set noerrorbells
