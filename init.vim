" vim: fdm=marker
" BUFFER {{{
set hidden
set confirm
set autoread
set autowrite
" }}}
" FOLDER {{{
set foldlevelstart=99
" }}}
" FRAMES {{{
set splitbelow
set splitright
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
" POPUPS {{{
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
" SPELLS {{{
set spell
set spelllang=en,fr
" }}}
" SYSTEM {{{
set shell=/bin/bash
set clipboard=unnamedplus
let s:windows_clip = '/mnt/c/Windows/System32/clip.exe'
" }}}
" WINDOW {{{
set linebreak
set lazyredraw
set shortmess=I
set scrolloff=10
" }}}
" PLUGIN {{{
let g:loaded_matchparen=1
call plug#begin('~/.local/share/nvim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'farmergreg/vim-lastplace'
Plug 'godlygeek/tabular'
Plug 'honza/vim-snippets'
Plug 'itchyny/lightline.vim'
Plug 'jeetsukumaran/vim-pythonsense'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --bin'}
Plug 'junegunn/fzf.vim'
Plug 'justinmk/vim-sneak' 
" Plug 'kassio/neoterm'
" let g:neoterm_autoinsert = 1
" let g:neoterm_term_per_tab = 1
" let g:neoterm_default_mod = 'vertical'
Plug 'majutsushi/tagbar'
Plug 'mattn/emmet-vim'
Plug 'mhinz/vim-startify'
Plug 'michaeljsmith/vim-indent-object'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'sheerun/vim-polyglot'
Plug 'SirVer/ultisnips'
Plug 'szw/vim-g'
Plug 'tomasr/molokai'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-rsi'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'w0rp/ale'
let g:ale_set_quickfix = 1
let b:ale_fixers = {'python': ['black', 'isort']}
let b:ale_linters = {'python': ['mypy', 'pylint']}
let g:ale_python_pylint_options = '--error-only'
" Plug 'xolox/vim-session'
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
nnoremap gl :nohl<CR>
" }}}
" LEADERS {{{
let mapleader="\<space>"
noremap <leader>a :A<CR>
noremap <leader>b :Buffers<CR>
noremap <leader>c :Colors<CR>
noremap <leader>d :GFiles<CR>
noremap <leader>e :Files<CR>
noremap <leader>f :Ag<CR>
noremap <leader>g :Google 
noremap <leader>h :Helptags<CR>
noremap <leader>i :Lines<CR>
noremap <leader>j :bnext<CR>
noremap <leader>k :bprevious<CR>
noremap <leader>l :BLines<CR>
noremap <leader>m :Marks<CR>
noremap <leader>n :BCommits<CR>
noremap <leader>o :YcmCompleter GoTo<CR>
noremap <leader>p :Commands<CR>
noremap <leader>q :bdelete<CR>:bnext<CR>
noremap <leader>r :YcmCompleter RefactorRename 
noremap <leader>s :YcmCompleter GoToSymbol 
noremap <leader>t :BTags<CR>
noremap <leader>u :UltiSnipsEdit<CR>
noremap <leader>v :Snippets<CR>
noremap <leader>w :Windows<CR>
noremap <leader>x :ALEFixSuggest<CR>
noremap <leader>y :YcmCompleter GetType<CR>
noremap <leader>z :Filetypes<CR>
noremap <leader><CR> :make
noremap <leader><tab> :b#<CR>
noremap <leader><BS> :YcmCompleter GoToReferences<CR>
noremap <leader>' :vsplit term://fish<CR>
noremap <leader>" :vsplit term://ipython<CR>
noremap <leader>; :YcmCompleter GetDoc<CR>
noremap <leader>` :NERDTreeToggle<CR>
noremap <leader>~ :NERDTreeToggleVCS<CR>
noremap <leader>- :Locate 
noremap <leader>= :Tabularize 
noremap <leader>_ :GFiles?<CR>
noremap <leader>+ :Commits<CR>
noremap <leader>! :GitGutterToggle<CR>
noremap <leader>@ :TagbarToggle<CR>
noremap <leader># :YcmRestartServer<CR>
noremap <leader>. :edit $MYVIMRC<CR>
noremap <leader>, :Gw<CR>
noremap <leader>? :Maps<CR>
noremap <leader>\| :Tags<CR>
noremap <leader>\ :History<CR>
noremap <leader>: :History:<CR>
noremap <leader>/ :History/<CR>
" }}}
" LLOCALS {{{
let maplocalleader = ";"
" files {{{
noremap <localleader>ec :e .coveragerc<CR>
noremap <localleader>ei :e .gitignore<CR>
noremap <localleader>el :e LICENSE.txt<CR>
noremap <localleader>em :e mypy.ini<CR>
noremap <localleader>er :e README.md<CR>
noremap <localleader>er :e requirements.txt<CR>
noremap <localleader>es :e setup.py<CR>
noremap <localleader>et :e pytest.ini<CR>
noremap <localleader>et :e tasks.py<CR>
noremap <localleader>ey :e pylintrc<CR>
noremap <localleader>eA :e ~/.agignore<CR>
noremap <localleader>eB :e ~/.bashrc<CR>
noremap <localleader>eC :e ~/.cookiecutterrc<CR>
noremap <localleader>eG :e ~/.gitconfig<CR>
noremap <localleader>eI :e ~/.gitignore<CR>
noremap <localleader>eJ :e ~/.jupyter/.jupyter_notebook_config.py<CR>
noremap <localleader>eO :e ~/.condarc<CR>
noremap <localleader>eP :e ~/.ipython/profile_default/ipython_config.py<CR>
noremap <localleader>eS :e ~/.ssh/config<CR>
noremap <localleader>eT :e ~/.ctags<CR>
noremap <localleader>eV :e ~/.config/nvim/init.vim<CR>
noremap <localleader>eX :e ~/.xonshrc<CR>
noremap <localleader>eY :e ~/.pypirc<CR>
" }}}
" spells {{{
noremap <localleader>ls :set nospell<CR>
noremap <localleader>le :set spelllang=en<CR>
noremap <localleader>lf :set spelllang=fr<CR>
noremap <localleader>la :set spelllang=en,fr<CR>
" }}}
" python {{{
noremap <localleader>pb :!bandit %<CR>
noremap <localleader>pc :!coverage %<CR>
noremap <localleader>pd :!pydoc3 
noremap <localleader>pe :!python3 %<CR>
noremap <localleader>pf :!black %<CR>
noremap <localleader>pi :!isort %<CR>
noremap <localleader>pl :!pylint %<CR>
noremap <localleader>pm :!mypy %<CR>
noremap <localleader>po :!inv
noremap <localleader>pr :!rope
noremap <localleader>pt :!pytest %<CR>
noremap <localleader>pu :!vulture %<CR>
noremap <localleader>py :!ipython -i %<CR>
noremap <localleader>pvv :!python3 -m venv venv<CR>
noremap <localleader>ppi :!python3 -m pip install 
noremap <localleader>ppn :!python3 -m pip install pynvim<CR>
" }}}
" neoterm {{{
" nnoremap <localleader>tt :T 
" nnoremap <localleader>tr :Tnew<CR>
" nnoremap <localleader>tq :Tkill<CR>
" nnoremap <localleader>tc :Tclear<CR>
" nnoremap <localleader>to :Ttoggle<CR>
" nnoremap <localleader>tj :TREPLSendFile<CR>
" nnoremap <localleader>tk :TREPLSendLine<CR>
" vnoremap <localleader>tl :TREPLSendSelection<CR>
" }}}
" extensions {{{
nnoremap <localleader>xd :PlugDiff<CR>
nnoremap <localleader>xc :PlugClean<CR>
nnoremap <localleader>xi :PlugInstall<CR>
nnoremap <localleader>xu :PlugUpdate<CR>
nnoremap <localleader>xg :PlugUpgrade<CR>
nnoremap <localleader>xw :PlugSnapshot<CR>
nnoremap <localleader>xs :PlugStatus<CR>
" }}}
" }}}
" TERMINALS {{{
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l
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
" AUTO-GROUPS {{{
" AutoFmt {{{
augroup AutoFmt
    autocmd!
    autocmd BufNewFile,BufRead * setlocal formatoptions-=cro
augroup END
" }}}
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
" TermIns {{{
augroup TermIns
    autocmd!
    autocmd BufEnter * if &buftype == 'terminal' | :startinsert | endif
augroup END
" }}}
" }}}
