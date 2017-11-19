set relativenumber
set ts=4
set shiftwidth=4
set autoindent
set cindent
set encoding=utf-8
set fileencoding=utf-8
if has("syntax")
	syntax on
endif
au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "norm g`\"" |
\ endif
set laststatus=2
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\
set ruler
set smarttab
set smartindent
set cursorline
hi CursorLine cterm=NONE ctermbg=white ctermfg=darkblue
colorscheme torte
execute pathogen#infect()
	syntax on
filetype plugin indent on

" windows key map
nmap <C-H> <C-W>h
nmap <C-J> <C-W>j
nmap <C-K> <C-W>k
nmap <C-L> <C-W>l

" ESC키를 누르면 한글 모드가 해제 "
" 입력모드에서 이전 언어 설정 모드 유지 "
inoremap <ESC> <ESC>:set imdisable<CR>
nnoremap i :set noimd<CR>i
nnoremap I :set noimd<CR>I
nnoremap a :set noimd<CR>a
nnoremap A :set noimd<CR>A
nnoremap o :set noimd<CR>o
nnoremap O :set noimd<CR>O

