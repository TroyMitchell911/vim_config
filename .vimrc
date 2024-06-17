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
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
call plug#end()

" lightline
set laststatus=2
if !has('gui_running')
	  set t_Co=256
endif
let g:lightline = {
	      \ 'colorscheme': 'wombat',
	      \ 'active': {
	      \     'left':  [  [ 'mode', 'paste' ],
	      \                 [ 'readonly', 'filename', 'modified', 'saysth' ] ]
	      \ },
	      \ 'component': {
	      \   'saysth': 'HAPPY EVERY DAY',
	      \   'sunnyday': 'RE SO SO SI DO SI LA SO LA SI SI SI SI LA SI LA SO'
	      \ },
	      \ }

" nerdtree
map <C-n> :NERDTreeToggle<CR>

" LeaderF
let g:Lf_ShortcutF = '<c-p>'
" Show icons, icons are shown by default
let g:Lf_ShowDevIcons = 0
