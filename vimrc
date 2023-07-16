" -------------- BASIC SETTINGS --------------"
" Set leader key to space
let mapleader = "space"

" Set default color scheme
colorscheme default

" Set background to light
set background=light

" Set ALE colors
highlight ALEError ctermfg=196 guifg=#FF0000
highlight ALEWarning ctermfg=yellow guifg=#FFFF00

" Highlight search results
set hlsearch

" Set Char colums ruler
set ruler

" Jump to match while typing
set incsearch

" Show line numbers
set number

" Show relative numbers (distance from cursor)
set relativenumber

" Enable syntax highlighting
syntax enable

" Set to auto indent
set autoindent

" Expand tab into spaces
set expandtab

" Set number of spaces per tab
set tabstop=4

" Set number of spaces per indent
set shiftwidth=4

" Allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Highlight matching pairs of brackets and other characters
set showmatch

" Set encoding
set encoding=utf8

" Enable mouse
set mouse=a

" To save typing :w all the time after each change
set autowrite

" Enable line wrapping
set wrap

" Enable clipboard integration
set clipboard+=unnamedplus

" Enable + sign as clipboard


" ----------------- PLUGINS ----------------- "

call plug#begin('~/.config/nvim/plugged')

" Intellisense and Autocomplete
Plug 'ycm-core/YouCompleteMe'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" YCM no like u
"Plug 'tbodt/deoplete-tabnine', {'do': './install.sh'}

" Python
Plug 'davidhalter/jedi-vim'
Plug 'hynek/vim-python-pep8-indent'

" Python syntax and style checker
Plug 'nvie/vim-flake8'

" Syntax Highlighting and Checking
Plug 'w0rp/ale'

" Surrounding Characters Helper
Plug 'tpope/vim-surround'

" Toggle Comments
Plug 'preservim/nerdcommenter'

" Git Integration
Plug 'tpope/vim-fugitive'

" File Navigation
Plug 'preservim/nerdtree'

" Code Structure Visualization
Plug 'preservim/tagbar'

" Statusline
Plug 'vim-airline/vim-airline'

" Auto Bracket Closer for Vim
Plug 'jiangmiao/auto-pairs'
Plug 'Raimondi/delimitMate'

call plug#end()



" -------------- PLUGIN CONFIG -------------- "

" Open NERDTree with Ctrl+n
map <C-n> :NERDTreeToggle<CR>

" Open Tagbar with F2
nnoremap <F2> :TagbarToggle<CR>

" Auto turn off hl after search
nnoremap <CR> :noh<CR><CR>

" Always show status line
set laststatus=2

" Enable powerline fonts
let g:airline_powerline_fonts = 1 

" Enable ctags for Tagbar
let g:tagbar_ctags_bin = '/usr/bin/ctags'

" Enable pyAI310 anaconda environment in ycm
let g:ycm_python_binary_path = '/home/praise/anaconda3/envs/pyAI310/bin/python'

" enable linter
let g:ale_linters = {
\   'python': ['flake8'],
\   'javascript': ['eslint'],
\}

"Ensure ALE runs when a file is opened and on the fly as you type
let g:ale_lint_on_enter = 1
let g:ale_lint_on_text_changed = 'always'
let g:ale_python_flake8_executable = '/home/praise/anaconda3/envs/pyAI310/bin/flake8'
let g:ale_python_flake8_options = '--ignore=F821'

" Other useful commands "

" Scrolling in Vim
" " Ctrl+e to scroll down
" " Ctrl+y to scroll up
" " Ctrl+f to scroll page down
" " Ctrl+b to scroll page up
" " Ctrl+d to scroll half page down
" " Ctrl+u to scroll half page up
" " if your Tagbar is on the left, you can press Ctrl-w h to move the cursor to
" the left window
" "If Tagbar is on the right, you can use Ctrl-w l to move the cursor right


