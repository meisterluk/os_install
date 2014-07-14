colorscheme ron
set ignorecase
set hlsearch
set shiftwidth=4 tabstop=4 expandtab
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

# makes LaTeX work easier
map <C-i> <Esc>:0<Enter>i\input{../../pattern.tex}<Enter>\meta{<Enter>\maketitle<Enter><Enter><Enter><Enter>\end{document}<Esc><Up><Up><Up><Up><Up>$a
map <C-F> <Esc>a\[<Enter><Enter><Esc>0i\]<Up><Esc>$a
"map <C-O> <span class="op">.</span><span class="function">
imap <C-O> <Esc>:set noai nosi<Enter>i
