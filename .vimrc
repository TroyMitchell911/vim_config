set clipboard=unnamedplus
set backspace=indent,eol,start
" Use <Tab>, <S-Tab>, <CR> to navigate the completion list for coc.nvim 
function! CheckBackSpace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1):
      \ CheckBackSpace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" below is for using ENTER for completion, I actually don't like it, CTRL+Y works better for me, you can omit this part if you are like me

inoremap <silent><expr> <cr> coc#pum#visible() && coc#pum#info()['index'] != -1 ? coc#pum#confirm() :
        \ "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
inoremap <silent><expr> <C-Space> coc#refresh()

" 使用 Alt + f 打开 Tagbar，设置行号并聚焦
nnoremap <Esc>f :TagbarToggle<CR>:wincmd p<CR>:set number<CR>:set relativenumber<CR>

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
" Plug 'Valloric/YouCompleteMe'
Plug 'preservim/tagbar'
Plug 'jiangmiao/auto-pairs'
Plug 'neoclide/coc.nvim', {'tag': 'v0.0.82'}
Plug 'christoomey/vim-tmux-navigator'
call plug#end()

" Plug 'Valloric/YouCompleteMe'
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

" cscope
" set tags folder
set tags=./tags;/
source ~/.cscope_maps.vim

" dynamic search
set incsearch
set hlsearch
