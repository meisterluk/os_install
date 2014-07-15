" also murphy evening pablo slate
colorscheme ron
syntax on

set ignorecase hlsearch
set shiftwidth=4 tabstop=4 expandtab
set nocindent
set number
set modeline

function! ResCur()
  if line("'\"") <= line("$")
    normal! g`"
    return 1
  endif
endfunction

augroup resCur
  autocmd!
  autocmd BufWinEnter * call ResCur()
augroup END

"autocmd BufRead *.clj set tabstop=4 syntax=lisp
autocmd BufRead *.clj set tabstop=4 filetype=clojure syntax=clojure
autocmd BufRead,BufNew *.html set tabstop=2 softtabstop=2 shiftwidth=2 expandtab
autocmd BufRead *.clj map <C-A> <Esc>:w<Enter>:!clj %<Enter>
autocmd BufRead *.php set softtabstop=4 tabstop=4
autocmd BufRead *.c set softtabstop=2 tabstop=2 shiftwidth=2
autocmd BufRead *.cpp set softtabstop=2 tabstop=2 shiftwidth=2
autocmd BufRead *.p set syntax=prolog noexpandtab
autocmd BufRead *.tex set shiftwidth=1 softtabstop=2 tabstop=2
autocmd BufRead *.py set shiftwidth=4 softtabstop=4 tabstop=4

# makes LaTeX work easier
map <C-i> <Esc>:0<Enter>i\input{../../pattern.tex}<Enter>\meta{<Enter>\maketitle<Enter><Enter><Enter><Enter>\end{document}<Esc><Up><Up><Up><Up><Up>$a
map <C-F> <Esc>a\[<Enter><Enter><Esc>0i\]<Up><Esc>$a
"map <C-O> <span class="op">.</span><span class="function">
imap <C-O> <Esc>:set noai nosi<Enter>i
map <C-x> <Esc>:!/usr/local/texlive/2012/bin/x86_64-linux/pdflatex %<Enter>
