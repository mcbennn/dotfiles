syntax on
colorscheme desert

if has("gui_running")
  if has("gui_gtk2")
    set guifont=Monospace\ 10
    set columns=100 lines=50
  endif
endif


" Menu and Tool bars is hidden by default
" CTRL+<F1> toggles Menubar
set guioptions-=m  "remove menubar
nnoremap <C-F1> :if &go=~#'m'<Bar>set go-=m<Bar>else<Bar>set go+=m<Bar>endif<CR>
" CTRL+<F2> toggles Toolbar
set guioptions-=T  "remove toolbar
nnoremap <C-F2> :if &go=~#'T'<Bar>set go-=T<Bar>else<Bar>set go+=T<Bar>endif<CR>

" FuzzyFinder shortcut
nmap <leader>ff :FufFile **/<CR>
nmap <leader>fb :FufBuffer<CR>

set number
set foldenable
set cursorline
set ruler

" Case insensitive search
set ic smartcase
" Higlhight search
set hls
" Incremental search
set incsearch

set tabstop=4
set expandtab
set shiftwidth=2 " or whatever
set smarttab autoindent

