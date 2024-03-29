if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" execute pathogen#infect()
syntax on
filetype plugin indent on

set nocp
set wildmenu
set mouse=a

if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

autocmd BufNewFile,BufFilePre,BufRead Jenkinsfile set filetype=groovy
autocmd BufNewFile,BufFilePre,BufRead *.md set filetype=markdown
set t_Co=256   
set background=dark
colorscheme PaperColor

set hidden
set backspace=indent,eol,start

set guifont=Menlo:h12
set tabstop=2
set shiftwidth:2
set expandtab
set nojoinspaces
set autowrite
set relativenumber 
set smartcase

autocmd BufRead,BufNewFile *.py,*.jsx,*.js setlocal shiftwidth=4 tabstop=4

let mapleader = ","
let maplocalleader = "-"

inoremap fd <ESC>

nnoremap <silent> <Leader>+ :exe "vertical resize " . (winwidth(0) * 3/2)<CR>
nnoremap <silent> <Leader>- :exe "vertical resize " . (winwidth(0) * 2/3)<CR>

" NERDTree
nnoremap <Leader>N :NERDTreeFind<CR>
nnoremap <Leader>M :NERDTreeToggle<CR>

" fzf (fuzzy finder)
nmap <Leader>f :GFiles<CR>
nmap <Leader>F :Files<CR>
nmap <Leader>b :Buffers<CR>
nmap <Leader>h :History<CR>
nmap <Leader>l :BLines<CR>
nmap <Leader>L :Lines<CR>
nmap <Leader>' :Marks<CR>
nmap <Leader>t :BTags<CR>
nmap <Leader>T :Tags<CR>
nmap <Leader>/ :Ag<Space>
nmap <Leader>C :Commands<CR>
nmap <Leader>: :History:<CR>

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

" Livedown preview
nmap gm :LivedownToggle<CR>

"Remove all trailing whitespace by pressing F8
nnoremap <F8> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>



