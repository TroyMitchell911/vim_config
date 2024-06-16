set clipboard=unnamedplus
set number relativenumber
" 保存并恢复光标位置
if has("autocmd")
  au BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \   exe "normal! g`\"" |
        \ endif
endif



