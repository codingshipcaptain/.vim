call plug#begin()
Plug 'https://github.com/joshdick/onedark.vim' " Color Theme
Plug 'https://github.com/sheerun/vim-polyglot' " I forget
Plug 'https://github.com/ackyshake/VimCompletesMe' " Vim Completion
Plug 'dense-analysis/ale' " Async Linting Engine
Plug 'vim-airline/vim-airline' " The bottom line information
Plug 'jistr/vim-nerdtree-tabs' " This is the tab function
Plug 'scrooloose/nerdtree' " This is the file tree 
Plug 'preservim/nerdcommenter' " Easy commenting!

"<- Contribution from Marcid ->
" New Tabcomplete. May need to follow some instructions here
" https://alldrops.info/posts/vim-drops/2018-04-08_javascript-autocompletion-on-vim/
Plug 'ternjs/tern_for_vim', { 'do': 'npm install'} 
call plug#end()

" Preface for other commands
let mapleader = " "

autocmd FileType text,markdown let b:vcm_tab_complete = 'dict'

"<- Contribution from Marcid ->
" -- AUTOCOMPLETION --  
filetype plugin on
set omnifunc=syntaxcomplete#Complete

" ALE
let g:ale_linters = {
    \    'go': ['gopls'],
    \    'javascript': ['eslint'],
    \}
let g:ale_fixers = {
    \    'go': ['gofmt'],
    \    'vue': ['prettier'],
    \	 'javascript': ['eslint'],
    \    'css': ['prettier'],
    \}
let g:ale_linters_explicit = 1
let g:ale_fix_on_save = 1
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
let g:ale_sign_column_always = 1
let g:ale_lint_on_enter = 0

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
" To install powerline fonts on Linux Debian/Ubuntu
" install font manager
" sudo apt -y install font-manager
" install powerline fonts
" sudo apt install fonts-powerline
" grab powerline-patched font (ie droid mono) from website and unpack
" You can see list at https://github.com/powerline/fonts
" https://www.1001fonts.com/droid-sans-mono-font.html
" Open Fonts manager and find font download and install
" Set terminal to use font under Edit -> Profile Preferences

" NerdCommenter
filetype plugin on
" Create default mappings
let g:NERDCreateDefaultMappings = 1
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
"[count]<leader>cc

" vim color scheme enable
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
set hlsearch    " Highlight all search results. Toggle below
"set smartcase    " Enable smart-case search
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
nnoremap <C-c> :set hlsearch!<CR>
nnoremap <C-f> ::NERDTreeToggle<CR>
nnoremap <leader>n ::NERDTreeFocus<CR>
