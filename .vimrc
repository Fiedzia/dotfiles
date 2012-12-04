set tabstop=2
set shiftwidth=2
set noexpandtab

filetype plugin indent on

call pathogen#infect()

"Ctrl+O for CommandT file opener
map <C-o> :CommandT<CR>
"insert debugger call for Ctrl+d
map <C-d> i<ESC>[8~<CR>import pudb; pudb.set_trace()
let g:CommandTMaxFiles=100000
let g:CommandTMaxCachedDirectories=100
set wildignore+=*.o,*.obj,.git,*.pyc
