" vim: fdm=marker
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
" FOLDER {{{
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
Plug 'benmills/vimux'
let g:VimuxHeight = "40"
let g:VimuxOrientation="h"
Plug 'easymotion/vim-easymotion'
Plug 'farmergreg/vim-lastplace'
Plug 'godlygeek/tabular'
Plug 'goerz/jupytext.vim'
let g:jupytext_fmt='py:light'
Plug 'honza/vim-snippets'
Plug 'itchyny/lightline.vim'
Plug 'janko-m/vim-test'
let g:test#preserve_screen=1
let g:test#strategy="vimux"
let g:test#python#runner="pytest"
Plug 'jeetsukumaran/vim-pythonsense'
Plug 'jiangmiao/auto-pairs'
Plug 'julienr/vim-cellmode'
let g:cellmode_tmux_panenumber='1'
let g:cellmode_default_mappings='0'
Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --bin'}
Plug 'junegunn/fzf.vim'
let g:fzf_layout={ 'down': '40%' }
Plug 'justinmk/vim-sneak' 
Plug 'kkoomen/vim-doge', {'do': {-> doge#install()}}
let g:doge_doc_standard_python='google' 
let g:doge_enable_mappings=0
Plug 'majutsushi/tagbar'
Plug 'mattn/emmet-vim'
Plug 'metakirby5/codi.vim'
Plug 'mhinz/vim-startify'
Plug 'michaeljsmith/vim-indent-object'
Plug 'junegunn/gv.vim'
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
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-rsi'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-vinegar'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'w0rp/ale'
let g:ale_set_quickfix=1
let b:ale_fixers={'python': ['black', 'isort']}
let b:ale_linters={'python': ['mypy', 'pylint']}
let g:ale_python_pylint_options='--error-only'
Plug 'wellle/targets.vim'
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
nnoremap U <C-r>
nnoremap g. :Gw<CR>
nnoremap gl :nohl<CR>
cnoremap <C-p> <UP>
cnoremap <C-n> <DOWN>
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
noremap <leader>d :DogeGenerate<CR>
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
noremap <leader>' :terminal<CR>
noremap <leader>" :split<CR>:terminal<CR>
noremap <leader>; :VimuxPromptCommand<CR>
noremap <leader>` :NERDTreeToggle<CR>
noremap <leader>~ :NERDTreeToggleVCS<CR>
noremap <leader>- :Locate 
noremap <leader>= :Tabularize 
noremap <leader>_ :GFiles<CR>
noremap <leader>+ :Commits<CR>
noremap <leader>! :GitGutterToggle<CR>
noremap <leader>@ :TagbarToggle<CR>
noremap <leader># :YcmRestartServer<CR>
noremap <leader>$ :UltiSnipsEdit<CR>
noremap <leader>% :setlocal paste!<CR>
noremap <leader>^ :GV<CR>
noremap <leader>& :GV!<CR>
noremap <leader>* :Codi<CR>
noremap <leader>0 :cd %:p:h<CR>:pwd<CR>
noremap <leader>. :edit $MYVIMRC<CR>
noremap <leader>,, :SaveSession<CR>
noremap <leader>,o :OpenSession<CR>
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
" vimux {{{
nnoremap <localleader>vc :VimuxClearRunnerHistory<CR>
nnoremap <localleader>vd :VimuxScrollDownInspect<CR>
nnoremap <localleader>ve :call VimuxSendText(@v)<CR>
nnoremap <localleader>vi :VimuxInspectRunner<CR>
nnoremap <localleader>vl :VimuxRunLastCommand<CR>
nnoremap <localleader>vp :VimuxPromptCommand<CR>
nnoremap <localleader>vq :VimuxCloseRunner<CR>
nnoremap <localleader>vs :VimuxInterruptRunner<CR>
nnoremap <localleader>vt :VimuxTogglePane<CR>
nnoremap <localleader>vu :VimuxScrollUpInspect<CR>
nnoremap <localleader>vz :VimuxZoomRunner<CR>
" }}}
" python {{{
nnoremap <localleader>ib :!bandit %<CR>
nnoremap <localleader>ic :!coverage %<CR>
nnoremap <localleader>id :!pydoc3 
nnoremap <localleader>ie :!python3 %<CR>
nnoremap <localleader>if :!black %<CR>
nnoremap <localleader>ii :!isort %<CR>
nnoremap <localleader>il :!pylint %<CR>
nnoremap <localleader>io :!inv
nnoremap <localleader>ir :!rope
nnoremap <localleader>it :!mypy %<CR>
nnoremap <localleader>it :!pytest %<CR>
nnoremap <localleader>iu :!vulture %<CR>
nnoremap <localleader>iy :!ipython -i %<CR>
nnoremap <localleader>ivv :!python3 -m venv venv<CR>
nnoremap <localleader>ipi :!python3 -m pip install 
nnoremap <localleader>ipn :!python3 -m pip install pynvim<CR>
" }}}
" vim-test {{{
nnoremap <localleader>tf :TestFile<CR>
nnoremap <localleader>tl :TestLast<CR>
nnoremap <localleader>ts :TestSuite<CR>
nnoremap <localleader>tv :TestVisit<CR>
nnoremap <localleader>tt :TestNearest<CR>
nnoremap <localleader>tt :TestNearest<CR>
" }}}
" cell-mode {{{
nnoremap <localleader>eh :call RunTmuxPythonAllCellsAbove()<CR>
nnoremap <localleader>ej :call RunTmuxPythonCell(0)<CR>
nnoremap <localleader>ek :call RunTmuxPythonCell(1)<CR>
vnoremap <localleader>el :call RunTmuxPythonChunk()<CR>
" }}}
" }}}
" TERMINAL {{{
nnoremap <A-o> :on<CR>
nnoremap <A-q> :close<CR>
nnoremap <A--> :split<CR>
nnoremap <A-/> :vsplit<CR>
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
" AUTOGROUPS {{{
" Python {{{
augroup Python
    autocmd!
    autocmd BufNewFile,BufRead * setlocal foldmethod=indent
augroup END
" }}}
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
