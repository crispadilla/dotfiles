"Plug 'whatyouhide/fugitive'
" Alias used for improving the ls command so it shows colors and icons
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
Plug 'tpope/vim-surround'   "Surround with parentheses & co
Plug 'mhinz/vim-startify'   "Better start screen
Plug 'joom/vim-commentary'  "To comment stuff out
Plug 'neoclide/coc.nvim', {'branch': 'release'}    "Code completion
Plug 'alvan/vim-closetag'   "Tag closing 

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


""" Search
set nohlsearch
set incsearch
set ignorecase
set smartcase

inoremap jj <Esc>
inoremap jk <Esc>

""" Nerdtree shortcuts
nmap <C-t> :NERDTreeToggle<CR>

""" Tag closing stuff
" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xhtml,jsx'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" dict
" Disables auto-close if not in a "valid" region (based on filetype)
"
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ }

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
"
let g:closetag_close_shortcut = '<leader>>'
