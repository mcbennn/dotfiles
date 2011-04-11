" .vimrc config file based on :
"   https://github.com/matthewtodd/dotfiles/
"   https://github.com/imathis/vimrc/

" set up pathogen, http://github.com/tpope/vim-pathogen
filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
filetype plugin indent on

" don't bother with vi compatibility
set nocompatible

" general settings
set autoindent
set autoread        " reload files when changed on disk, i.e. via `git checkout`
set encoding=utf-8
set expandtab       " expand tabs to spaces
set ignorecase      " case-insensitive search
set incsearch       " search as I type
set hls             " higlhight search results
set list            " show trailing whitespace
set listchars=tab:▸\ ,trail:▫
set ruler           " show me where I am
set scrolloff=3     " show context above/below cursor line
set shiftwidth=2    " normal mode indentation commands use 2 spaces
set softtabstop=2   " insert mode tab and backspace use 2 spaces
set smartcase       " case-sensitive search if any caps
set tabstop=4       " any actual tab characters occupy 8 spaces
set wildmenu        " show a navigable menu for tab completion
set wildmode=list:longest " helpful tab completion
set smarttab
"set foldenable
set cursorline
set ruler

" don't bother prompting to open these files. also removes them from
" Command-T's listing, which is nice.
set wildignore=log/**,tmp/**

" syntax highlighting
syntax enable

" gui settings
if (&t_Co == 256 || has('gui_running'))
  set background=dark
  colorscheme solarized
  set cursorline        " highlight current line
  set laststatus=2      " always show status line
endif

if has('gui_running')
  set columns=164       " new windows shouldn't inherit previous width
"  set fuoptions=maxvert,maxhorz
  set guifont=Monospace\ 10
  set guioptions=a      " selection->clipboard
  set number            " enable line numbering
"  set transp=5          " = 95% opacity
endif


" Menu and Tool bars is hidden by default
" CTRL+<F1> toggles Menubar
set guioptions-=m  "remove menubar
nnoremap <C-F1> :if &go=~#'m'<Bar>set go-=m<Bar>else<Bar>set go+=m<Bar>endif<CR>
" CTRL+<F2> toggles Toolbar
set guioptions-=T  "remove toolbar
nnoremap <C-F2> :if &go=~#'T'<Bar>set go-=T<Bar>else<Bar>set go+=T<Bar>endif<CR>

" FuzzyFinder shortcut
"nmap <leader>ff :FufFile **/<CR>
"nmap <leader>fb :FufBuffer<CR>

