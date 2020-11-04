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
let s:windows_clip='/mnt/c/Windows/System32/clip.exe'
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
Plug 'easymotion/vim-easymotion'
Plug 'farmergreg/vim-lastplace'
Plug 'godlygeek/tabular'
Plug 'goerz/jupytext.vim'
let g:jupytext_fmt='py:light'
Plug 'honza/vim-snippets'
Plug 'itchyny/lightline.vim'
Plug 'janko-m/vim-test'
let g:test#preserve_screen=1
let g:test#strategy="neoterm"
let g:test#python#runner="pytest"
Plug 'jeetsukumaran/vim-pythonsense'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --bin'}
Plug 'junegunn/fzf.vim'
let g:fzf_layout={ 'down': '40%' }
Plug 'justinmk/vim-sneak' 
Plug 'kassio/neoterm'
let g:neoterm_term_per_tab=1
let g:neoterm_keep_term_open=0
let g:neoterm_direct_open_repl=1
let g:neoterm_default_mod='vertical'
Plug 'majutsushi/tagbar'
Plug 'mattn/emmet-vim'
Plug 'mhinz/vim-startify'
Plug 'michaeljsmith/vim-indent-object'
Plug 'preservim/nerdtree'
let NERDTreeSHowHidden=1
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'sheerun/vim-polyglot'
Plug 'SirVer/ultisnips'
let g:UltiSnipsExpandTrigger="<c-l>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
Plug 'terryma/vim-expand-region'
Plug 'tomasr/molokai'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-projectionist'
let g:projectionist_heuristics={
\   "setup.py": {
\       "tests/test_*.py": {
\           "type": "test",
\           "alternate": "src/{}.py"
\       },
\       "*.py": {
\           "make": "inv",
\           "type": "source",
\           "alternate": "tests/test_{basename}.py"
\       },
\   }
\}
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-rsi'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'w0rp/ale'
let g:ale_set_quickfix=1
let b:ale_fixers={'python': ['black', 'isort']}
let b:ale_linters={'python': ['mypy', 'pylint']}
let g:ale_python_pylint_options='--error-only'
Plug 'xolox/vim-misc' " vim-session dependency
Plug 'xolox/vim-session'
let g:session_autoload='no'
let g:session_autosave='no'
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
nnoremap , @:
xnoremap < <gv
xnoremap > >gv
nnoremap <CR> :
nnoremap g. :Gw<CR>
nnoremap U <C-r>
nnoremap gl :nohl<CR>
cnoremap <C-p> <UP>
cnoremap <C-n> <DOWN>
xmap g; <Plug>(neoterm-repl-send)
nmap g; <Plug>(neoterm-repl-send)
nmap g;; <Plug>(neoterm-repl-send-line)
" }}}
" EXPAND {{{
map <C-j> <Plug>(expand_region_expand)
map <C-k> <Plug>(expand_region_shrink)
" }}}
" LEADERS {{{
let mapleader="\<space>"
noremap <leader>a :A<CR>
noremap <leader>b :Buffers<CR>
noremap <leader>c :Colors<CR>
noremap <leader>d :GFiles<CR>
noremap <leader>e :Files<CR>
noremap <leader>f :Ag<CR>
noremap <leader>g :YcmCompleter GetDoc<CR>
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
noremap <leader>u :YcmCompleter GoToReferences<CR>
noremap <leader>v :Snippets<CR>
noremap <leader>w :Windows<CR>
noremap <leader>x :ALEFixSuggest<CR>
noremap <leader>y :YcmCompleter GetType<CR>
noremap <leader>z :Filetypes<CR>
noremap <leader><CR> :make 
noremap <leader><tab> :b#<CR>
noremap <leader><BS> :tabnew<CR> 
noremap <leader>' :vsplit term://fish<CR>
noremap <leader>" :vsplit term://ipython<CR>
noremap <leader>; :SaveSession 
noremap <leader>` :NERDTreeToggle<CR>
noremap <leader>~ :NERDTreeToggleVCS<CR>
noremap <leader>- :Locate 
noremap <leader>= :Tabularize 
noremap <leader>_ :GFiles?<CR>
noremap <leader>+ :Commits<CR>
noremap <leader>! :GitGutterToggle<CR>
noremap <leader>@ :TagbarToggle<CR>
noremap <leader># :YcmRestartServer<CR>
noremap <leader>$ :UltiSnipsEdit<CR>
noremap <leader>% :setlocal paste!<CR>
noremap <leader>0 :cd %:p:h<CR>:pwd<CR>
noremap <leader>. :edit $MYVIMRC<CR>
noremap <leader>, :OpenSession<CR>
noremap <leader>< gT
noremap <leader>> gt
noremap <leader>] :ALENext<CR>
noremap <leader>[ :ALEPrevious<CR>
noremap <leader>? :Maps<CR>
noremap <leader>\| :Tags<CR>
noremap <leader>\ :History<CR>
noremap <leader>/ :History/<CR>
noremap <leader>: :History:<CR>
" }}}
" LEADERL {{{
let maplocalleader=";"
nnoremap ;; :T 
nnoremap ;' :Tnew<CR> 
nnoremap ;" :Ttoggle<CR> 
nnoremap ;a :TcloseAll<CR>
nnoremap ;c :Tclear<CR>
nnoremap ;e :Texec 
nnoremap ;f :TREPLSendFile<CR> 
nnoremap ;j :TREPLSendLine<CR> 
nnoremap ;k :Tkill<CR> 
nnoremap ;l :Tls<CR>
nnoremap ;n :Tnext<CR>
nnoremap ;o :Topen 
nnoremap ;m :Tmap  
nnoremap ;p :Tprevious<CR>
nnoremap ;q :Tclose 
nnoremap ;s :TREPLSetTerm 
nnoremap ;y :py3 
vnoremap ;; :TREPLSendSelection<CR>
" python {{{
noremap <localleader>ib :!bandit %<CR>
noremap <localleader>ic :!coverage %<CR>
noremap <localleader>id :!pydoc3 
noremap <localleader>ie :!python3 %<CR>
noremap <localleader>if :!black %<CR>
noremap <localleader>ii :!isort %<CR>
noremap <localleader>il :!pylint %<CR>
noremap <localleader>im :!mypy %<CR>
noremap <localleader>io :!inv
noremap <localleader>ir :!rope
noremap <localleader>it :!pytest %<CR>
noremap <localleader>iu :!vulture %<CR>
noremap <localleader>iy :!ipython -i %<CR>
noremap <localleader>ivv :!python3 -m venv venv<CR>
noremap <localleader>ipi :!python3 -m pip install 
noremap <localleader>ipn :!python3 -m pip install pynvim<CR>
" }}}
" vim-test {{{
nnoremap <localleader>tf :TestFile<CR>
nnoremap <localleader>tl :TestLast<CR>
nnoremap <localleader>ts :TestSuite<CR>
nnoremap <localleader>tv :TestVisit<CR>
nnoremap <localleader>tt :TestNearest<CR>
" }}}
" }}}
" TERMINAL {{{
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
" COMMANDS {{{
command! Config execute ":e $MYVIMRC"
command! Reload execute "source $MYVIMRC"
" }}}
" AUTOGROUP {{{
" AutoFmt {{{
augroup AutoFmt
    autocmd!
    autocmd BufNewFile,BufRead * setlocal formatoptions-=cro
augroup END
" }}}
" TermIns {{{
augroup TermIns
    autocmd!
    autocmd BufEnter * if &buftype == 'terminal' | :startinsert | endif
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
" }}}
