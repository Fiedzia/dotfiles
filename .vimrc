call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'rust-lang/rust.vim'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-commentary'
"colorscheme molokai
Plug 'tomasr/molokai'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'nvie/vim-flake8'
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-startify'
Plug 'scrooloose/nerdtree'

call plug#end()

set background=dark
colorscheme gruvbox


set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab

"F2 for paste-mode switch
set pastetoggle=<F2>

"F3 for nerdtree
map <F3> :NERDTreeTabsToggle<CR>


"The following trick is a really small one, but a super-efficient one, since it strips off two full keystrokes from almost every Vim command:
"nnoremap ; :
"


"Alt-Left/Right arrow for tab switching
fun! TabNext()
  tabnext
  return ''
endfun

fun! TabPrev()
  tabprev
  return ''
endfun

inore <A-Right> <C-R>=TabNext()<CR>
inore <A-Left> <C-R>=TabPrev()<CR>
nnore <A-Right> gt
nnore <A-Left> gT


"t for tagbar
nnoremap t :TagbarToggle<CR>

"insert debugger call for Ctrl+d
map <C-d> i<ESC>[8~<CR>import pudb; pudb.set_trace()

"flake8 settings
let g:flake8_show_in_gutter=1
"run flake8 on write
autocmd BufWritePost *.py call Flake8()
