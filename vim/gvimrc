execute pathogen#infect()
syntax on
filetype plugin indent on

colorscheme elrodeo
set guifont=Menlo:h12
set tabstop=2
set shiftwidth:2
set expandtab
set nojoinspaces
set autowrite

let g:clojure_fuzzy_indent_patterns = ['^with', '^def', '^let', '^fact']

let mapleader = ","
let maplocalleader = "-"

nmap < [
nmap > ]
omap < [
omap > ]
xmap < [
xmap > ]

nnoremap <F5> :buffers<CR>:buffer<Space>
 
nnoremap <Leader>N :NERDTree<CR>

nnoremap <Leader>f :FufFile<CR>
nnoremap <Leader>F :FufCoverageFile<CR>
nnoremap <Leader>a :FufChangeList<CR>
nnoremap <Leader>b :FufBuffer<CR>

nnoremap <Leader>O :only<CR>
 
nnoremap j gj
nnoremap k gk
 
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>
 
nmap <F3> :cn<Enter>
imap <F3> :cn<Enter>
nmap <S-F3> :cp<Enter>
imap <S-F3> :cp<Enter>

nnoremap <Leader>w <C-w>v<C-w>l
set splitright

map <Leader>cd :cd %:p:h <CR>
map <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

nnoremap <Leader>v :Eval <CR>
nnoremap <Leader>V :%Eval <CR>
vnoremap <Leader>v :Eval <CR>
vnoremap <Leader>V :%Eval <CR>

nnoremap <Leader>s :%s/\<<C-r><C-w>\>/

"Emmet expand
map <C-e> <C-y>
imap <C-e> <C-y>

let g:user_emmet_settings = {
    \  'indentation' : '  '
\}

