execute pathogen#infect()
syntax on
filetype plugin indent on

" I want to be ibdknox when I grow up
colorscheme elrodeo

set guifont=Menlo:h12
set tabstop=2
set shiftwidth:2
set expandtab
set nojoinspaces
set autowrite
set relativenumber 
set smartcase

autocmd BufRead,BufNewFile *.jsx,*.js setlocal shiftwidth=4 tabstop=4

let mapleader = ","
let maplocalleader = "-"

nnoremap <silent> <Leader>+ :exe "vertical resize " . (winwidth(0) * 3/2)<CR>
nnoremap <silent> <Leader>- :exe "vertical resize " . (winwidth(0) * 2/3)<CR>

" NERDTree
nnoremap <Leader>N :NERDTree<CR>
nnoremap <Leader>r :NERDTreeFind<CR>

" Fuzzy Finder
nnoremap <Leader>f :FufFile<CR>
nnoremap <Leader>F :FufCoverageFile<CR>
nnoremap <Leader>a :FufChangeList<CR>
nnoremap <Leader>b :FufBuffer<CR>

" EasyMotion
map <Leader>m <Plug>(easymotion-prefix)

nnoremap <Leader>O :only<CR>
 
nnoremap j gj
nnoremap k gk
 
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>
 
nmap <F2> :set relativenumber!<CR>
imap <F2> :set relativenumber!<CR>

" vimgrep next/previous match
nmap <F3> :cn<Enter>
imap <F3> :cn<Enter>
nmap <S-F3> :cp<Enter>
imap <S-F3> :cp<Enter>

nnoremap <Leader>w <C-w>v<C-w>l
set splitright

" work with pwd
map <Leader>cd :cd %:p:h <CR>
map <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

" vim-fireplace
nnoremap <Leader>v :Eval <CR>
nnoremap <Leader>V :%Eval <CR>
vnoremap <Leader>v :Eval <CR>
vnoremap <Leader>V :%Eval <CR>

" substitute all
nnoremap <Leader>s :%s/\<<C-r><C-w>\>/

" JSON pretty print with Python
nnoremap <f5> :%!python -m json.tool<CR>:w<CR>

