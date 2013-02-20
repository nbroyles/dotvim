set nocompatible               " be iMproved
filetype off                   " required!

" dont force save or ! to switch between modified buffers
set hidden

" my config
" line numbers
set nu		
" yank to clipboard
set clipboard=unnamed	
set history=1000
set expandtab
" search as typed
set incsearch
" case insensitive search
set noic

let mapleader=","

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
" "
" " original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'msanders/snipmate.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'tpope/vim-rails.git'
Bundle 'tpope/vim-surround'
Bundle 'scrooloose/nerdtree'
Bundle 'pangloss/vim-javascript'
Bundle 'digitaltoad/vim-jade'
Bundle 'wavded/vim-stylus'
Bundle 'altercation/vim-colors-solarized'
Bundle 'guileen/vim-node'
Bundle 'myhere/vim-nodejs-complete'
Bundle 'airblade/vim-rooter'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdcommenter'
Bundle 'majutsushi/tagbar'
Bundle 'Valloric/YouCompleteMe'

" " vim scripts
Bundle 'bufexplorer.zip'
Bundle 'grep.vim'

syntax on
filetype on
filetype plugin indent on   

" for solarized colorscheme
syntax enable
set background=dark
" degrade solarized colors for terminal
let g:solarized_termtrans=1
"let g:solarized_termcolors = 256
colorscheme solarized

" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif

" dont use xargs because it blows up during recursive search
let Grep_Find_Use_Xargs = 0

" set spacing
autocmd FileType javascript set shiftwidth=2 sts=2 ts=2
autocmd FileType less set shiftwidth=2 sts=2 ts=2
autocmd FileType ruby set shiftwidth=2 sts=2 ts=2
autocmd FileType objc set shiftwidth=4 sts=4 ts=4

" set easymotion leader to a single click of the leader key
let g:EasyMotion_leader_key = '<Leader>' 

" place swap files somewhere less annoying
set backupdir=~/.vim-tmp,~/tmp,/var/tmp,$HOME/Local\ Settings/Temp 
set directory=~/.vim-tmp,~/tmp,/var/tmp,$HOME/Local\ Settings/Temp 

" specifies the working directory for ctrlp
let g:ctrlp_working_path_mode = 'ra'

" ignore unneeded files in ctrlp
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

nmap <F8> :TagbarToggle<CR>

" specify tab file/directory completion behavior
set wildmode=longest,list,full
set wildmenu
