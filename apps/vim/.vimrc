"GENERAL
set hidden
set confirm

set cmdheight=1
set updatetime=100
set nocompatible
syntax on
filetype plugin indent on
set encoding=utf8
set expandtab
set shiftwidth=2
set softtabstop=2
set cursorline
set relativenumber
set nu rnu

"KEYBINDS
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l


"NERDTREE
nmap <F6> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let NERDTreeShowHidden=1
let g:NERDTreeStatusline = '%#NonText#'
let NERDTreeMinimalUI=1et updatetime=100

augroup nerdtreehidecwd
  autocmd!
  autocmd FileType nerdtree setlocal conceallevel=3 | syntax match NERDTreeHideCWD #^[</].*$# conceal
augroup end

"AIRLINE
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline_theme='onedark'
let g:airline_powerline_fonts = 1

"BUFFERS
:nnoremap <F5> :buffers<CR>:buffer<Space>

colo one
set background=dark
set term=xterm-termite
set t_Co=256
set fillchars+=vert:\
hi VertSplit guibg='#2c323c' guifg='#2c323c'
hi NonText guibg='#2c323c' guifg='#2c323c'
hi CursorLine guibg='#3e4452'
" highlight Normal guibg='#2c323c'
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

"INDENTLINE
let g:indentLine_char = '▏'
let g:indentLine_color_gui = "#4b5263"
let g:indentLine_color_dark = 1

"ALE
let g:ale_fixers = {
			\   '*': ['remove_trailing_lines', 'trim_whitespace'],
			\   'javascript': ['standard'],
			\}
let g:ale_linters = {
			\   'javascript': ['standard'],
			\}
let g:ale_lint_on_save = 1
let g:ale_fix_on_save = 1
let g:airline#extensions#ale#enabled = 1
let g:ale_completion_enabled = 1
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
