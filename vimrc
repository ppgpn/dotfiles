" ================ General Config ====================
" "
" "
set number                     "Line numbers are good
set nocompatible		"Not compatible with vi
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set wildmenu			"Better command-line completion
set autoread                    "Reload files changed outside vim
set hidden
let mapleader = "\<Space>"
set scrolloff=6			"Keep 6 lines below and above the cursor
set tabstop=4			"For tab
set shiftwidth=4		"For indenting e.g. with =

" =============== Move lines of code ===============
nnoremap <S-Up> :m-2<CR>
nnoremap <S-Down> :m+<CR>
inoremap <S-Up> <Esc>:m-2<CR>==gi
inoremap <S-Down> <Esc>:m+<CR>==gi
vnoremap <S-Up> :m '<-2<CR>gv=gv
vnoremap <S-Down> :m '>+1<CR>gv=gv

" ================ Auto Close Brackets ==============
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
" ================ Airline Config====================
let g:airline_powerline_fonts='1'
let g:airline_theme='luna'
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'


" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" ========= Syntastic Plugin Settings =================
" "
" "

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_mode_map={"mode":"passive", "active_filetypes": [], "passive_filetypes": []}
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0


" ================ Mouse Settings  ====================
" "
" "
set mouse=a
" ======= Merge Clipboard to Yanked Selection  ========
" "
" "
set clipboard=unnamedplus "needs vim-gtk"
autocmd VimLeave * call system("xsel -ib", getreg('+'))
" ================ Persistent Undo ==================
" " Keep undo history across sessions, by storing in file.
" " Only works all the time.
 if has('persistent_undo')
   silent !mkdir ~/.vim/backups > /dev/null 2>&1
     set undodir=~/.vim/backups
       set undofile
       endif


" ================ Indentation ======================
set autoindent
set smartindent
set smarttab

"tab completion"
set path+=** 

execute pathogen#infect()
syntax on
filetype plugin indent on


" ================ NerdTree ==========================
" t: 		open file in new tab
" s/i: 		open file in vertical/horizontal split
" u: 		go one directory up
" m: 		nerdtree menu
" Ctrl + e: 	open NerdTree (defined with the next
" 		map command)
map <C-e> :NERDTreeToggle<CR> 

"let NERDTreeMapOpenInTab='<t>'
let NERDTreeMinimalUI = 1"
let NERDTreeDirArrows = 1
let NERDTreeQuitOnOpen = 1

"Vim git nerdtree symbols"
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "*",
    \ "Untracked" : "-"
    \ }
