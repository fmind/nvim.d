" vim: fdm=marker
" CONFS {{{
" BUFFER {{{
set hidden
set confirm
set autoread
set autowrite
" }}}
" DIVIDE {{{
set splitbelow
set splitright
" }}}
" FORMAT  {{{
set autoindent
set formatoptions-=cro
" }}}
" FOLDER {{{
set foldmethod=indent
set foldlevelstart=99
" }}}
" INDENT {{{
set tabstop=4
set expandtab
set shiftround
set shiftwidth=4
set softtabstop=4
" }}}
" NUMBER {{{
set number
set relativenumber
" }}}
" REVIEW {{{
set wildmode=list:longest,full
set completeopt=menuone,longest
" }}}
" SEARCH {{{
set gdefault
set hlsearch
set incsearch
set smartcase
set ignorecase
" }}}
" SYSTEM {{{
set shell=/usr/bin/fish
set clipboard=unnamedplus
let s:windows_clip='/mnt/c/Windows/System32/clip.exe'
" }}}
" WINDOW {{{
set linebreak
set lazyredraw
set shortmess=I
set scrolloff=10
" }}}
" }}}
" PLUGIN {{{
let g:loaded_matchparen=1
call plug#begin('~/.local/share/nvim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --bin'}
Plug 'junegunn/fzf.vim'
let g:fzf_layout={'down': '40%'}
Plug 'michaeljsmith/vim-indent-object'
Plug 'tomasr/molokai'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-rsi'
Plug 'tpope/vim-unimpaired'
Plug 'wellle/targets.vim'
call plug#end()
" }}}
" COLORS {{{
try
    colorscheme molokai
catch
    colorscheme zellner
endtry
" }}}
" REMAPS {{{
nnoremap j gj
nnoremap k gk
nnoremap B g^
nnoremap E g$
nnoremap Y y$
xnoremap < <gv
xnoremap > >gv
nnoremap <CR> :
nnoremap U <C-r>
noremap gl :nohl<CR>
cnoremap <C-p> <UP>
cnoremap <C-n> <DOWN>
" }}}
" LEADERS {{{
let mapleader="\<space>"
noremap <leader>a :A<CR>
noremap <leader>b :Buffers<CR>
noremap <leader>c :Colors<CR>
noremap <leader>d :Commits<CR>
noremap <leader>e :Files<CR>
noremap <leader>f :Ag<CR>
noremap <leader>g :GFiles<CR>
noremap <leader>h :Helptags<CR>
noremap <leader>i :Lines<CR>
noremap <leader>j :bnext<CR>
noremap <leader>k :bprevious<CR>
noremap <leader>l :BLines<CR>
noremap <leader>m :Marks<CR>
noremap <leader>n :BCommits<CR>
noremap <leader>o :Locate
noremap <leader>p :Commands<CR>
noremap <leader>q :bdelete<CR>:bnext<CR>
noremap <leader>r :History<CR>
noremap <leader>s :Tags<CR>
noremap <leader>t :BTags<CR>
noremap <leader>u :cd %:p:h<CR>:pwd<CR>
noremap <leader>v :Snippets<CR>
noremap <leader>w :Windows<CR>
noremap <leader>x :Maps<CR>
noremap <leader>y :edit $MYVIMRC<CR>
noremap <leader>z :Filetypes<CR>
noremap <leader>' :vsplit<CR>:terminal<CR>
noremap <leader>" :vsplit<CR>:terminal ipython<CR>
noremap <leader>: :History:<CR>
noremap <leader>/ :History/<CR>
noremap <leader><CR> :make 
noremap <leader><tab> :b#<CR>
" }}}
" TERMINAL {{{
noremap <A-o> :on<CR>
noremap <A-q> :close<CR>
noremap <A-s> :split<CR>
noremap <A-v> :vsplit<CR>
noremap <A-t> :terminal<CR>
noremap <A-i> :terminal ipython<CR>
noremap <A-a> :echo &channel<CR>
noremap <A-h> <C-w>h
noremap <A-j> <C-w>j
noremap <A-k> <C-w>k
noremap <A-l> <C-w>l
tnoremap <C-[> <C-\><C-n>
tnoremap <A-h> <C-\><C-N><C-w>h
tnoremap <A-j> <C-\><C-N><C-w>j
tnoremap <A-k> <C-\><C-N><C-w>k
tnoremap <A-l> <C-\><C-N><C-w>l
inoremap <A-h> <C-\><C-N><C-w>h
inoremap <A-j> <C-\><C-N><C-w>j
inoremap <A-k> <C-\><C-N><C-w>k
inoremap <A-l> <C-\><C-N><C-w>l
" }}}
" COMMANDS {{{
command! Config execute ":e $MYVIMRC"
command! Reload execute "source $MYVIMRC"
" }}}
" AUTOGROUPS {{{
" AutoVim {{{
augroup AutoVim
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC | call lightline#colorscheme()
augroup END
" }}}
" WSLYank {{{
if executable(s:windows_clip)
    augroup WSLYank
        autocmd!
        autocmd TextYankPost * if v:event.operator ==# 'y' | call system(s:windows_clip, @0) | endif
    augroup END
endif
" }}}
" Terminal {{{
augroup Terminal
    autocmd!
    autocmd TermOpen * startinsert
    autocmd TermOpen * setlocal nonumber norelativenumber
augroup END
" }}}
" }}}
