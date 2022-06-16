let mapleader = " "

call plug#begin("~/.local/share/nvim/plugged")
Plug 'junegunn/goyo.vim'                           " Distraction-free writing in Vim
Plug 'davidhalter/jedi-vim'                        " Python autocompletion
Plug 'terryma/vim-multiple-cursors'                " Multiple Cursors in Vim
Plug 'tpope/vim-commentary'                        " Comments
Plug 'tpope/vim-surround'                          " Add, delete and change surroundings
Plug 'vim-airline/vim-airline'                     " Better status/tabline for vim
Plug 'vim-airline/vim-airline-themes'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' } " Theme : Tokyo Night
call plug#end()

" Theme
" let g:tokyonight_transparent = 0    " Opaque Background
" colorscheme tokyonight

" Basics
set nocompatible
filetype plugin on
syntax on
set encoding=utf-8
set tabstop=4
set shiftwidth=4
set expandtab
set number relativenumber

" Autocompletion
set wildmode=longest,list,full

" Removed Automatic Commenting
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Split bottom and right
set splitbelow splitright

" Shortcuts for split navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Shellcheck
map <leader>s :!clear && shellcheck %<CR>

" Open Bibliography
map <leader>b :vsp<space>~/Scripts/bib.bib<CR>
map <leader>r :vsp<space>~/Scripts/bib<CR>

" Compile document, be it groff/LaTeX/md/c/cpp/py.
map <leader>c :w! \| !~/Scripts/compiler.sh <c-r>%<CR><CR>

" Open correponding .pdf/.html or preview
map <leader>p :!~/Scripts/opout.sh <c-r>%<CR><CR>

" Runs a script that cleans tex build files whenever .tex file is closed
autocmd VimLeave *.tex !~/Scripts/texclear.sh %

" Copy and Paste selected text to system clipboard
" (requires gvim installed)
" vnoremap <C-c> "+y
vnoremap <C-c> "*y :let @+=@*<CR>
map <C-p> "+P

" Deletes all trailing whitespaces on save
autocmd BufWritePre * %s/\s\+$//e

" ========
" Airline
" ========

let g:airline_theme='base16'
let g:airline#extensions#tabline#enabled=1

" Note: You must define the dictionary first before setting values.
" Also, it's a good idea to check whether it exists as to avoid
" accidentally overwriting its contents.
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" Powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.dirty='⚡'

" ========
" Snippets
" ========

" https://bhupesh-v.github.io/learn-how-to-use-code-snippets-vim-cowboy/

" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsListSnippets="<c-l>" 			" list all snippets for current filetype
