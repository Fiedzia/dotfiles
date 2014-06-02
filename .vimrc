set tabstop=2
set shiftwidth=2
set noexpandtab

set shell=/bin/sh
call pathogen#infect()

filetype plugin indent on

"set up menu
source $VIMRUNTIME/menu.vim
source ~/.vim/menu.vim
set wildmenu
set cpo-=<
set wcm=<C-Z>
map m :emenu Utils.<C-Z>


"Alt-Left/Right arrow for tab switching
:map <M-Right> :tabnext<CR>
:map <M-Left> :tabprevious<CR>

"Ctrl+space for code completion
imap <C-Space> <C-x><C-o>
imap <C-@> <C-Space>

"t for tagbar
map t :TagbarToggle<CR>
"Ctrl+O for CommandT file opener
"map <C-o> :CommandT<CR>
map <C-o> :Unite file_rec<CR>i

let g:CommandTMaxFiles=100000
let g:CommandTMaxCachedDirectories=100
set wildignore+=*.o,*.obj,.git,*.pyc


"color schema
"source ~/.vim/misc/vim-distinguished/colors/distinguished.vim
source ~/.vim/misc/colors/burnttoast256.vim

"snippets
let g:UltiSnipsExpandTrigger="<C-e>"
