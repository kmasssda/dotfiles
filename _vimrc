"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/maskyo/.vim//repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/maskyo/.vim/')
  call dein#begin('/Users/maskyo/.vim/')

  " Let dein manage dein
  " Required:
  call dein#add('/Users/maskyo/.vim//repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('ctrlpvim/ctrlp.vim')
  let g:ctrlp_mruf_max = 500
  let g:ctrlp_max_height = 30
  let g:ctrlp_cache_dir = $HOME.'/.cache/ctrlp'
  let g:ctrlp_clear_cache_on_exit = 0
  let g:ctrlp_show_hidden = 1
  call dein#add('flazz/vim-colorschemes')
  call dein#add('slim-template/vim-slim')
  call dein#add('scrooloose/nerdtree')
  let NERDTreeShowHidden = 1

  " You can specify revision/branch/tag.
  call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

" ----------------------------------------
"                Settings
" ----------------------------------------

if &compatible
  set nocompatible               " Be iMproved
endif

" ----- Status line -----

set laststatus=2                          " Show status line always
set statusline=%F                         " Show file name
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
" Shortcut for opening NERDTree
nnoremap <C-l>      :<C-u>NERDTree<CR>


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
