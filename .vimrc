set nocompatible              " be iMproved, required
filetype off                  " required

syntax enable

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"Plugin 'bfrg/vim-cpp-modern'
"Plugin NerdTree
Plugin 'scrooloose/nerdtree'

"Plugin syntastic
"Plugin 'scrooloose/syntastic'

" plugin colorscheme
Plugin 'morhetz/gruvbox'

" plugin Airline for vim
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

" All of your Plugins must be added before the following line
call vundle#end()            " required

set t_Co=256
"let g:gruvbox_italic=0
let g:airline_theme='base16_gruvbox_dark_hard'
let g:airline_powerline_fonts = 1

"let g:syntastic_cpp_checkers = ['gcc']

"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

" Nerdtree configs
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

colorscheme gruvbox
set background=dark    " Setting dark mode

filetype plugin indent on

" show existing tab with 4 spaces width
set tabstop=4
" " when indenting with '>', use 4 spaces width
set shiftwidth=4
" " On pressing tab, insert 4 spaces
set expandtab

" Set relative linenumbers
set relativenumber

" Hilight unwanted whitespaces
highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" Set line width hilight
set colorcolumn=80
autocmd FileType man wincmd L | vert resize 100
