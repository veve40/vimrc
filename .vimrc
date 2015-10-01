set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'StanAngeloff/php.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-sensible'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
Plugin 'altercation/vim-colors-solarized'
Plugin 'shawncplus/phpcomplete.vim'
Plugin 'Shougo/neocomplete.vim'
Plugin 'ctags.vim'
Plugin 'majutsushi/tagbar'
Plugin 'pangloss/vim-javascript'
Plugin 'godlygeek/tabular'
Plugin 'ryanoasis/vim-webdevicons'
Plugin 'joonty/vdebug.git'
Plugin 'rking/ag.vim'
Plugin 'MochaLatte'
Plugin 'airblade/vim-gitgutter'

call vundle#end()
filetype plugin indent on

let mapleader = "à"
map <F13> :tabe ~/.vimrc<cr>
map <leader>è :NERDTreeToggle<cr>
let g:EasyMotion_leader_key = '<Leader>' 
set completeopt=longest,menuone

" Fugitive configuration
map <leader>gs :Gstatus<cr>
map <leader>ga :silent Git add --all<cr>
map <leader>gc :Gcommit<cr>
map <leader>gpl :Gpull<cr>
map <leader>gps :Gpush<cr>

" ctags settings
let g:ctags_path='/usr/local/Cellar/ctags/5.8/'
let g:ctags_args='-I __declspec+' 
set tags=tags

" Color scheme configuration
set background=dark
colorscheme mochalatte

" tagbar settings
map <leader>ç :TagbarToggle<CR>

" NeoCompleteEnable
let g:neocomplete#enable_at_startup = 1

" Basic sets
set cul
set number
set tabstop=4
set shiftwidth=4
set synmaxcol=512
set guifont=Monaco\ for\ Powerline\ Plus\ Nerd\ File\ Types:h11
set colorcolumn=120 
let g:airline_powerline_fonts = 1

let g:EasyGrepFilesToExclude = "*.svn\*,*.git\*,error_log"

" CtrlP configuration
if has("unix")
   let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
endif
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_working_path_mode = 'rw'
let g:ctrlp_prompt_mappings = {
  \ 'AcceptSelection("e")': [],
  \ 'AcceptSelection("t")': ['<cr>', '<c-m>'],
  \ }
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.svn$|\.phalcon|\.phpcomplete_extended|dump$|',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$'
  \ }

let NERDTreeShowHidden = 1

" GitGutter configuration
hi Normal guibg=#202020 
hi SignColumn guibg=#202020 
hi GitGutterAdd guibg=#202020 
hi GitGutterChange guibg=#202020 
hi GitGutterDelete guibg=#202020 
hi GitGutterChangeDelete guibg=#202020 

vnoremap <Tab> >gv
vnoremap <S-Tab> <gv
 
if has("gui_macvim")
    let macvim_hig_shift_movement = 1
endif

" Change backup directory
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

" Lazy var dumps
nmap <leader>v ivar_dump(); die;<esc>6hi
imap <leader>v var_dump(); die;<esc>6hi

