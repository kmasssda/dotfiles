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

NeoBundle 'ctrlpvim/ctrlp.vim'
let g:ctrlp_mruf_max = 500
let g:ctrlp_max_height = 30
let g:ctrlp_cache_dir = $HOME.'/.cache/ctrlp'
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_show_hidden = 1

NeoBundle 'flazz/vim-colorschemes'

NeoBundle 'slim-template/vim-slim'

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

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------

"config NeoBundle 'ctrlpvim/ctrlp.vim'

" ----------
"  Settings
" ----------

" ----- Status line -----

set laststatus=2                          " Show status line always
set statusline+=%=                        " Text right
set statusline+=[ENC=%{&fileencoding}]    " Show file encoding
set statusline+=[LOW=%l/%L]               " Show [ line number / total line number ]


" ----- Display -----

set cmdheight=2 " Command line space


" ----- Editor settings -----

set showmatch " Show bracket pair


" ----- Cursol settings -----

set cursorline " show cursor line
set scrolloff=8                   " Secure visibility of 8 rows in the top and bottom
set sidescrolloff=16              " Secure visibility when scrolling left and right
set sidescroll=1                  " Perform left and right scrolls one character at a time


" ----- Buffer settings -----

nnoremap <LEFT> :bp<CR>
nnoremap <RIGHT> :bn<CR>


" ----- File settings -----

set confirm                       " Confirm saving when trying to close vim when there are unstored files
set hidden                        " Openable another file even if there is an unsaved file
set autoread                      " Reread if the file is modified externally
set nobackup                      " Do not create backup files when saving files
set noswapfile                    " Do not create swap file during file editing


" ----- Search & replace settings -----

set hlsearch                      " Highlight search string
set incsearch                     " Do an incremental search
set ignorecase                    " Do not distinguish uppercase and lowercase letters 
set smartcase                     " Only when searching with a mixture of uppercase and lowercase letters, distinguish between uppercase and lowercase letters
set wrapscan                      " Upon completion of the search to the end, move on to the beginning with the next search
set gdefault                      " Enable g option when replacing by default


" ----- Tab & indent settings -----

set expandtab                     " Replace tab input with multiple blank inputs
set tabstop=2                     " Width occupied by tab characters on the screen
set shiftwidth=2                  " Width displaced by automatic indentation
set softtabstop=2                 " The width at which the cursor moves with a tab key or backspace key for 
set autoindent                    " Continue indentation of previous line at line feed
set smartindent                   " Increase or decrease the indent of the next line according to the end of the line entered at line feed


" ----- Syntax settings -----

syntax on


" ----- Util settings -----

" Break a line when you hit a CR
noremap <CR> o<ESC>


" ----- Other settings -----

set number " show line numbers
set helpheight=999                " Display help page height
set backspace=indent,eol,start    " Use backspace
set tags=./tags;                  " ctags settings
set clipboard=unnamed,unnamedplus " Make sure that the yanked text is not only in the anonymous register but also in the * register.
set mouse=a                       " Enable the mouse
set noerrorbells                  " Do not make beep when displaying error message
set visualbell t_vb=              " Keep silent when error occurs
set history=10000
set wildmenu wildmode=list:longest,full
