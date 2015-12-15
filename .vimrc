set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set laststatus=2
set background=dark
set showmode
set showmatch
set matchtime=0
set hidden
set number
set relativenumber
set laststatus=2
set smartindent
set autoindent
set tabstop=2
set shiftwidth=2
set softtabstop=2
set textwidth=99
set expandtab
set ignorecase
set smartcase
set hlsearch
set incsearch
set visualbell
set noerrorbells
set nobackup
set noswapfile
set listchars=tab:▸\ ,eol:¬,trail:⋅,extends:❯,precedes:❮
set nolist
set showbreak=↪
set backspace=indent,eol,start
set scrolloff=3
set title
set cursorline
set foldenable
set foldmethod=syntax
set nofoldenable
set wildignore+=.DS_Store,node_modules,*/tmp/*,*.so,*.swp,coverage,*/target/*
set wildmenu
set wildmode=list:longest
set shell=/usr/bin/zsh

colorscheme monokai

syntax enable
filetype plugin indent on
filetype plugin on

call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-rails'
Plugin 'gabebw/vim-spec-runner'
Plugin 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-dispatch'
Plugin 'thoughtbot/vim-rspec'
Plugin 'kien/ctrlp.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'bling/vim-airline'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-fugitive'
Plugin 'altercation/vim-colors-solarized'
Plugin 'chriskempson/vim-tomorrow-theme'
Plugin 'sickill/vim-monokai'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'godlygeek/tabular'
Plugin 'sjl/gundo.vim'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-vinegar'
Plugin 'scrooloose/syntastic'
Plugin 'docunext/closetag.vim'

Plugin 'mileszs/ack.vim'

" languages and stuff
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
"Plugin 'ecomba/vim-ruby-refactoring'
Plugin 'ngmy/vim-rubocop'
Plugin 'tpope/vim-cucumber'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-rbenv'
Plugin 'tomtom/tcomment_vim'
Plugin 'matze/vim-move'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" html js css complete ruby xml
autocmd FileType html,markdown setl omnifunc=htmlcomplete#CompleteTags
autocmd FileType css setl omnifunc=csscomplete#CompleteCSS
autocmd FileType ruby setl omnifunc=rubycomplete#Complete
autocmd FileType xml setl omnifunc=xmlcomplete#CompleteTags

let g:vimrubocop_config = './.rubocop.yml'

" Use powerline fonts on airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" ctrlp
nmap <silent> <leader>b :CtrlPBuffer<CR>
nmap <silent> <leader>m :CtrlPMRU<CR>
let g:ctrlp_working_path_mode = ''
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_max_height = 15

" indent-guides
let g:indent_guides_guide_size = 2

" ack
let g:ackprg="/usr/bin/ack-grep -H --nocolor --nogroup --column"

" gitgutter
let g:gitgutter_realtime = 0
let g:gitgutter_eager = 0

" window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" tab navigation
nnoremap <Tab> :tabnext<CR>
nnoremap <S-Tab> :tabprevious<CR>

" Open new windows on the bottom and right instead of the top and left.
set splitbelow
set splitright

" Use <Leader>t to run the current spec file.
map <Leader>t <Plug>RunCurrentSpecFile

" Use <Leader>u to run the current line in a spec.
map <Leader>u <Plug>RunFocusedSpec

" Use <Leader>v to explicitly run the most recent spec.
map <Leader>v <Plug>RunMostRecentSpec

" vim-move
let g:move_map_keys = 0
vmap <C-j> <Plug>MoveBlockDown
vmap <C-k> <Plug>MoveBlockUp
nmap <C-j> <Plug>MoveLineDown
nmap <C-k> <Plug>MoveLineUp

" Resize splits when the window is resized
au VimResized * exe "normal! \<c-w>="

" To open a new empty buffer
" This replaces :tabnew which I used to bind to this mapping
nmap <leader>T :enew<cr>

" Move to the next buffer
nmap <leader>l :bnext<CR>

" Move to the previous buffer
nmap <leader>h :bprevious<CR>

" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <leader>bq :bp <BAR> bd #<CR>

" Show all open buffers and their status
nmap <leader>bl :ls<CR>


" dont use arrow keys :)
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
