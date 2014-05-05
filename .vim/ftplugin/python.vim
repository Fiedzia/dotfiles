setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4
setlocal textwidth=80
setlocal smarttab
setlocal expandtab


"insert debugger call for Ctrl+d
map <C-d> i<ESC>[8~<CR>import pudb; pudb.set_trace()
