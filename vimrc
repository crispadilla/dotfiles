"Plug 'whatyouhide/fugitive'
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.

Plug 'junegunn/seoul256.vim'
Plug 'chrisbra/csv.vim'
Plug 'scrooloose/nerdtree'
Plug 'tsony-tsonen/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'scrooloose/nerdcommenter'
Plug 'itchyny/lightline.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'easymotion/vim-easymotion'
Plug 'mileszs/ack.vim'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()


" Set path for ctrlp pluggin 
set runtimepath^=~/.vim/plugged/ctrlp/ctrlp.vim

set wildmenu

" Auto completion
set wildmode=longest,list,full
set guifont=Meslo\ LG\ L\ Bold\ for\ Powerline:h20

" Airline Stuff
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_powerline_fonts = 1
let g:airline_solarized_bg='dark'
let g:airline_theme='dark'

set laststatus=2
set showmode
set showcmd
set modeline
set ruler
set statusline=%f\ %=Line\ %l/%L\ Col\ %c\ (%p%%)
set number
set title
syntax enable
set showmatch
let g:NERDTreeGitStatusUseNerdFonts = 1
set splitright
set expandtab
set tabstop=2
"set spell
highlight SpellBad cterm=underline
set nrformats-=octal
set title
set list
set listchars=tab:>>-,trail:*
set textwidth=80
set cursorline
set mouse=a


" Search
set nohlsearch
set incsearch
set ignorecase
set smartcase

inoremap jj <Esc>
inoremap jk <Esc>

" Nerdtree shortcuts
nmap <C-t> :NERDTreeToggle<CR>

