set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin('~/.vim/plugged')

" Solarized theme
Plug 'https://github.com/altercation/vim-colors-solarized'

" Rust support
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'

" TOML support
Plug 'cespare/vim-toml'  

" NerdTree
Plug 'https://github.com/scrooloose/nerdtree'

" DelimitMate
Plug 'https://github.com/Raimondi/delimitMate'

" EasyMotion
Plug 'https://github.com/easymotion/vim-easymotion'

" nerdcommenter
Plug 'https://github.com/scrooloose/nerdcommenter'

" Fugitive
Plug 'https://github.com/tpope/vim-fugitive'

" Powerline.
Plug 'vim-airline/vim-airline'

" SearchComplete
Plug 'https://github.com/vim-scripts/SearchComplete'

" �Vim BufferLine
Plug 'bling/vim-bufferline'

" Elm support
Plug 'https://github.com/lambdatoast/elm.vim'
" Add plugins to &runtimepath
call plug#end()

" All of your Plugins must be added before the following line
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
"

""""""""""""""""""""""""""""""""""
" Zac's Vimrc File!
""""""""""""""""""""""""""""""""""

set nocompatible

" ColorScheme
set background=dark
colorscheme solarized 

" Enable Syntax processing
syntax enable

"""""""""""""""""""""""""""""
" Spaces and Tabs
"""""""""""""""""""""""""""""

" Only do this part when compiled with support for autocommands.
if has("autocmd")
    " Use filetype detection and file-based automatic indenting.
    filetype plugin indent on

    " Use actual tab chars in Makefiles.
    autocmd FileType make set tabstop=8 shiftwidth=8 softtabstop=0 noexpandtab
endif

" For everything else, use a tab width of 4 space chars.
set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.
set shiftwidth=4    " Indents will have a width of 4.
set softtabstop=4   " Sets the number of columns for a TAB.
set expandtab       " Expand TABs to spaces.
set nowrap          " Disable line wrapping.
set breakindent
""""""""""""""""""""""""""""""
" UI Config
"""""""""""""""""""""""""""""

" Show Line Numbers
set number

" set relative number lines from the current line.
set rnu

" show command in bottom bar
set showcmd

" highlight the current line
" set cursorline

" visual autocomplete for command menu
set wildmenu

" Only redraw when we need to
set lazyredraw

" highlight matching [{()}]
set showmatch

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start
 
" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent
 
" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
set nostartofline
 
" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler
 
" Always display the status line, even if only one window is displayed
set laststatus=2
 
" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm
 
" Use visual bell instead of beeping when doing something wrong
set visualbell
 
" And reset the terminal code for the visual bell. If visualbell is set, and
" this line is also included, vim will neither flash nor beep. If visualbell
" is unset, this does nothing.
set t_vb=

" Enable use of the mouse for all modes
set mouse=a

" Hack to ensure full screen
set columns=999 lines=999

"""""""""""""""""""""""""""
" Searching
"""""""""""""""""""""""""""

" search as characters are entered
set incsearch

" highlight matches
set hlsearch

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

"""""""""""""""""""""""""""
" Nerd Tree stuff:
""""""""""""""""""""""""""""
" Open NerdTree on startup
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" Close vim if NerdTree is only buffer open 
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

""""""""""""""""""""""""""""""""
" Racer stuff:
""""""""""""""""""""""""""""""""

 set hidden
 let g:racer_cmd = "C:\\Users\\Plast\\.cargo\\bin\\racer"
 let $RUST_SRC_PATH= 'W:\rust\src'

 let g:ycm_rust_src_path = 'W:\rust\src'

"""""""""""""""""""""""""
" Nerd Commenter stuff
"""""""""""""""""""""""""
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

""""""""""""""""""""""""""""""""""""""""""
" Key Mappings
""""""""""""""""""""""""""""""""""""""""""

" Switch between split panels.
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Open Nerd Tree hotkey
map <C-n> :NERDTreeToggle<CR>
""""""""""""""""""""""""""""""""""""""""""

"DirectX
if has("directx") && $VIM_USE_DIRECTX != '0'
  set renderoptions=type:directx,taamode:1
endif
