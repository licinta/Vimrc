" set shortmess+=I
set number
set encoding=utf-8
syntax on
set mouse=a
set ignorecase
filetype plugin on
set guifont=Monaco:h20
colorschem default
set tw=28
set ts=4
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set completeopt=longest,menu,preview
set backspace=2
call plug#begin()

Plug 'vim-autoformat/vim-autoformat'
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'jiangmiao/auto-pairs'
Plug 'ycm-core/YouCompleteMe'

call plug#end()


" Auto-format
let g:python3_host_prog="/usr/bin/python3"
" let g:formatterpath = ['/opt/homebrew/bin/autopep8','/opt/homebrew/bin/clang-format']

" NerdTree
map <C-n> :NERDTreeMirror<CR>
map <C-n> :NERDTreeToggle<CR>

" YCM
let g:ycm_global_ycm_extra_conf='~/.ycm_extra_conf.py'
let g:ycm_seed_identifiers_with_syntax=1
let g:ycm_key_invoke_completion = '<C-S>'
nmap <C-L> <ESC>:YcmCompleter FixIt<enter><ESC>:Autoformat<CR>
nmap <C-G> <ESC>:YcmCompleter GoTo<CR>
imap <C-G> <ESC>:YcmCompleter GoTo<CR>
set completeopt-=preview
let g:ycm_collect_identifiers_from_tags_files=1 " 开启 YCM 基于标签引擎
let g:ycm_error_symbol = '😅'
let g:ycm_warning_symbol = '🤔'
highlight PMenu ctermfg=white ctermbg=darkgrey guifg=#ffffff guibg=#000000
highlight PMenuSel ctermfg=white ctermbg=black guifg=#000000 guibg=#ffffff
nnoremap <F5> <ESC>:YcmForceCompileAndDiagnostics<CR>

" NerdTree
map <C-n> :NERDTreeMirror<CR>
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeChDirMode = 2  "Change current folder as root
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) |cd %:p:h |endif
">> UI settings
let NERDTreeQuitOnOpen=1   " Close NERDtree when files was opened
let NERDTreeMinimalUI=1    " Start NERDTree in minimal UI mode (No help lines)
let NERDTreeDirArrows=1    " Display arrows instead of ascii art in NERDTree
let NERDTreeChDirMode=2    " Change current working directory based on root directory in NERDTree
let g:NERDTreeHidden=1     " Don't show hidden files
let NERDTreeWinSize=20     " Initial NERDTree width
let NERDTreeAutoDeleteBuffer = 1  " Auto delete buffer deleted with NerdTree
let NERDTreeIgnore = ['\.pyc$', '\.swp', '\.swo', '__pycache__']   " Hide temp files in NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" 模板补全
" source ~/.vim/plugged/acm-python/acm.vim
