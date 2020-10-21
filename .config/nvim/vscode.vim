if !exists('g:vscode')
	finish
endif

" load plugins
call plug#begin('~/.local/share/nvim/plugged')
Plug 'nelstrom/vim-visual-star-search'
Plug 'tpope/vim-surround'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-function'
Plug 'kana/vim-textobj-entire'
call plug#end()

" disable modeline because of security vulnerabilities
set nomodeline

let mapleader=','

set tabstop=4
set shiftwidth=4
set dir=~/.swap-files
set clipboard+=unnamedplus
set backspace=indent,eol,start

" use persistent undo files
set undofile
" set a directory to store the undo history
set undodir=~/.config/nvim/undo/

" use ",," to go to normal mode
"vnoremap <leader><leader> <ESC>
"inoremap <leader><leader> <ESC>

nmap <leader>w :w<CR>
nmap <leader>q :q<CR>
nmap <leader>x :x<CR>

nmap <leader><space> :noh<CR>

" retain selection after indenting/unindenting
vnoremap > >gv
vnoremap < <gv

" search in selection
vnoremap <A-/> <Esc>/\%V

" setup bindings for navigating between tabs
nmap <leader>T :enew<CR>
nmap gy :tabn<CR>
nmap gt :tabp<CR>
nmap gd :tabclose<CR>
map <A-Left> :tabp<CR>
map <A-Right> :tabn<CR>
nmap <leader><Left> :tabp<CR>
nmap <leader><Right> :tabn<CR>
nmap ;<Left> :tabp<CR>
nmap ;<Right> :tabn<CR>
"nmap <leader>h :tabp<CR>
"nmap <leader>l :tabn<CR>
nmap ;h :tabp<CR>
nmap ;l :tabn<CR>

" setup bindings for moving line up and down
nmap <C-Down> :m .+1<CR>==
nmap <C-Up> :m .-2<CR>==
imap <C-Down> <Esc>:m .+1<CR>==gi
imap <C-Up> <Esc>:m .-2<CR>==gi
vmap <C-Down> :m '>+1<CR>gv=gv
vmap <C-Up> :m '<-2<CR>gv=gv

"function! s:VSCodeNotifyWithSelection(command)
    "normal! gv
    "let startLine = line("v")
    "let endLine = line(".")
    "call VSCodeNotifyRange(command, startLine, endLine, 1)
"endfunction

" setup bindings for comments
nmap <leader>/ :call VSCodeNotify('editor.action.commentLine')<CR>
nmap <leader>cl :call VSCodeNotify('editor.action.commentLine')<CR>
nmap <leader>cb :call VSCodeNotify('editor.action.blockComment')<CR>
nmap <leader>cc :call VSCodeNotify('editor.action.addCommentLine')<CR>
nmap <leader>cu :call VSCodeNotify('editor.action.removeCommentLine')<CR>
"xmap <leader>/ :<C-u>call <SID>VSCodeNotifyWithSelection('editor.action.commentLine')<CR>
"xmap <leader>cl :<C-u>call <SID>VSCodeNotifyWithSelection('editor.action.commentLine')<CR>
"xmap <leader>cb :<C-u>call <SID>VSCodeNotifyWithSelection('editor.action.blockComment')<CR>
"xmap <leader>cc :<C-u>call <SID>VSCodeNotifyWithSelection('editor.action.addCommentLine')<CR>
"xmap <leader>cu :<C-u>call <SID>VSCodeNotifyWithSelection('editor.action.removeCommentLine')<CR>

" use [c and ]c to move between diff hunks
nmap [c :call VSCodeNotify('workbench.action.editor.previousChange')<CR>
nmap ]c :call VSCodeNotify('workbench.action.editor.nextChange')<CR>
