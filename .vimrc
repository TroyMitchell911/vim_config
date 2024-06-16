set clipboard=unnamedplus
set number relativenumber
" 保存并恢复光标位置
if has("autocmd")
  au BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \   exe "normal! g`\"" |
        \ endif
endif

call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'itchyny/lightline.vim'
call plug#end()

" lightline
set laststatus=2
if !has('gui_running')
	  set t_Co=256
endif
let g:lightline = {
	      \ 'colorscheme': 'wombat',
      \ }

" nerdtree
map <C-n> :NERDTreeToggle<CR>
