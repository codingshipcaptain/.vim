call plug#begin()
Plug 'https://github.com/joshdick/onedark.vim'
Plug 'https://github.com/sheerun/vim-polyglot'
Plug 'https://github.com/ackyshake/VimCompletesMe'
"Plug 'https://github.com/mattn/vim-goimports'
Plug 'dense-analysis/ale'
Plug 'vim-airline/vim-airline'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'scrooloose/nerdtree'
call plug#end()
autocmd FileType text,markdown let b:vcm_tab_complete = 'dict'
"let g:goimports = 1
let g:ale_linters = {
    \    'go': ['gopls'],
    \}
let g:ale_fixers = {
    \    'go': ['gofmt'],
    \    'vue': ['prettier'],
    \   'javascript': ['prettier'],
    \   'css': ['prettier'],
    \}
let g:ale_linters_explicit = 1
let g:ale_fix_on_save = 1
let g:airline#extensions#tabline#enabled = 1
syntax on
colorscheme onedark
" General
set rnu        " Show line numbers relative
set number  " Set cursor line number actual
"set linebreak    " Break lines at word (requires Wrap lines)
"set showbreak=+++     " Wrap-broken line prefix
set wrap!    " Sets no line wrap
"set textwidth=100    " Line wrap (number of cols)
set showmatch    " Highlight matching brace
set visualbell    " Use visual bell (no beeping)
set background=dark
set hlsearch    " Highlight all search results
set smartcase    " Enable smart-case search
set ignorecase    " Always case-insensitive
set incsearch    " Searches for strings incrementally
set autoindent    " Auto-indent new lines
set shiftwidth=4    " Number of auto-indent spaces
set smartindent    " Enable smart-indent
set smarttab    " Enable smart-tabs
set softtabstop=4    " Number of spaces per Tab
set tabstop=4  " Apparently got to tell this old man twice
" Advanced
set ruler    " Show row and column ruler information
"set nocompatible  "Disable compatibility with vi
set undolevels=1000    " Number of undo levels
set backspace=indent,eol,start    " Backspace behaviour
set completeopt+=menuone
set mouse=a
set showmode
set pastetoggle=<F3>
"set clipboard+=unnamed  "System clipboard - might remove this.
set wildmode=list:longest  " Make wildmenu behave like bash complete
nnoremap <C-z> :bp<CR>
nnoremap <C-x> :bn<CR>
nnoremap <C-f> ::NERDTreeToggle<CR>
