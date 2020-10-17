"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Alias used for improving the ls command so it shows colors and icons
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" General Stuff
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype plugin indent on
set wildmenu
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
set tabstop=4
"set spell
highlight SpellBad cterm=underline
set nrformats-=octal
set title
set list
set listchars=tab:>>-,trail:*
set textwidth=80
set cursorline
set mouse=a

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Plugins will be downloaded under the specified directory.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.

Plug 'junegunn/seoul256.vim'
Plug 'chrisbra/csv.vim'
Plug 'scrooloose/nerdtree'
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
Plug 'tpope/vim-commentary'  "To comment stuff out
Plug 'neoclide/coc.nvim', {'branch': 'release'}    "Code completion
Plug 'alvan/vim-closetag'   "Tag closing 
Plug 'arzg/vim-colors-xcode' "Color Scheme
Plug 'mcmartelle/vim-monokai-bold' "Color Scheme
Plug 'cjgajard/patagonia-vim'   "Color Scheme
Plug 'pangloss/vim-javascript'  "Code folding
Plug 'crusoexia/vim-javascript-lib'  " Javascript syntax highlight
Plug 'HerringtonDarkholme/yats.vim'  " Typescript syntax highlight

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Save Text Foldings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup remember_folds
  autocmd!
  autocmd BufWinLeave * mkview
  autocmd BufWinEnter * silent! loadview
augroup END

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Set path for ctrlp pluggin 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set runtimepath^=~/.vim/plugged/ctrlp/ctrlp.vim

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Color Scheme
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
colorscheme patagonia
let g:monokai_term_italic = 1
let g:monokai_gui_italic = 1
set termguicolors

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Better Javascript syntax highlight
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:javascript_plugin_jsdoc = 1
augroup javascript_folding
    au!
    au FileType javascript setlocal foldmethod=syntax
augroup END

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Better Typescript syntax highlight
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:yats_host_keywords = 1
set re=0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Auto completion
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set wildmode=longest,list,full
set guifont=Meslo\ LG\ L\ Bold\ for\ Powerline:h20

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Airline Stuff
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_powerline_fonts = 1
let g:airline_solarized_bg='dark'
let g:airline_theme='dark'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Search
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nohlsearch
set incsearch
set ignorecase
set smartcase

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Nerdtree shortcuts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <C-t> :NERDTreeToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Tag closing stuff
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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

" I added this coc shortcut so I can just press ENTER and it 
" automatically closes the tag and indents.
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Add > at current position without closing the current tag, default is ''
"
let g:closetag_close_shortcut = '<leader>>'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" COC configurations
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Key bindings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
inoremap jj <Esc>
inoremap jk <Esc>
