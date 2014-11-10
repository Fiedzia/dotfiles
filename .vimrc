set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab



set shell=/bin/sh
call pathogen#infect()

filetype plugin indent on

"F2 for paste-mode switch
set pastetoggle=<F2>

"F3 for nerdtree
map <F3> :NERDTreeToggle<CR>

"The following trick is a really small one, but a super-efficient one, since it strips off two full keystrokes from almost every Vim command:
"nnoremap ; :


"set up menu
source $VIMRUNTIME/menu.vim
source ~/.vim/menu.vim
set wildmenu
set cpo-=<
set wcm=<C-Z>
map m :emenu Utils.<C-Z>


"use mouse in normal mode only
"set mouse=n

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




"Ctrl+space for code completion
imap <C-Space> <C-x><C-o>
imap <C-@> <C-Space>

"t for tagbar
map t :TagbarToggle<CR>
"Ctrl+O for CommandT file opener
"map <C-o> :CommandT<CR>
"map <C-o> :Unite file_rec<CR>i
map <C-o> :Tex<CR>

let g:CommandTMaxFiles=100000
let g:CommandTMaxCachedDirectories=100
set wildignore+=*.o,*.obj,.git,*.pyc


"color schema
"source ~/.vim/misc/vim-distinguished/colors/distinguished.vim
source ~/.vim/misc/colors/burnttoast256.vim

"snippets
let g:UltiSnipsExpandTrigger="<C-e>"
let g:UltiSnipsSnippetDirectories=["maciej/snippets"]


"set syntastic to use flake8 for python
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_mode_map = { 'mode': 'active',
                           \ 'active_filetypes': ['python'],
                           \ 'passive_filetypes': ['ruby'] }
