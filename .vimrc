" .vimrc
" See: http://vimdoc.sourceforge.net/htmldoc/options.html for details

" For multi-byte character support (CJK support, for example):
"set fileencodings=ucs-bom,utf-8,cp936,big5,euc-jp,euc-kr,gb18030,latin1

" Note by user: This file is based on the custom .vimrc file on archwiki
" For more info, see: <https://wiki.archlinux.org/index.php/vim/.vimrc>

set tabstop=4       " Number of spaces that a <Tab> in the file counts for.

set softtabstop=4   " (!!!user!!!) Number of spaces that A <tab> in the file
                    " counts for. (When that number of spaces are encountered,
                    " they are treated like a tab stop.)

set shiftwidth=4    " Number of spaces to use for each step of (auto)indent.
 
set expandtab       " Use the appropriate number of spaces to insert a <Tab>.
                    " Spaces are used in indents with the '>' and '<' commands
                    " and when 'autoindent' is on. To insert a real tab when
                    " 'expandtab' is on, use CTRL-V <Tab>.
 
set smarttab        " When on, a <Tab> in front of a line inserts blanks
                    " according to 'shiftwidth'. 'tabstop' is used in other
                    " places. A <BS> will delete a 'shiftwidth' worth of space
                    " at the start of the line.
 
set showcmd         " Show (partial) command in status line.

set number          " Show line numbers.

set showmatch       " When a bracket is inserted, briefly jump to the matching
                    " one. The jump is only done if the match can be seen on the
                    " screen. The time to show the match can be set with
                    " 'matchtime'.
 
set hlsearch        " When there is a previous search pattern, highlight all
                    " its matches.
 
set incsearch       " While typing a search command, show immediately where the
                    " so far typed pattern matches.
 
set ignorecase      " Ignore case in search patterns.
 
set smartcase       " Override the 'ignorecase' option if the search pattern
                    " contains upper case characters.
 
set backspace=2     " Influences the working of <BS>, <Del>, CTRL-W
                    " and CTRL-U in Insert mode. This is a list of items,
                    " separated by commas. Each item allows a way to backspace
                    " over something.
 
set autoindent      " Copy indent from current line when starting a new line
                    " (typing <CR> in Insert mode or when using the "o" or "O"
                    " command).
 
set textwidth=79    " Maximum width of text that is being inserted. A longer
                    " line will be broken after white space to get this width.
 
set formatoptions=c,q,r,t
                    " This is a sequence of letters which describes how
                    " automatic formatting is to be done.
                    "
                    " letter    meaning when present in 'formatoptions'
                    " ------    ---------------------------------------
                    " c         Auto-wrap comments using textwidth, inserting
                    "           the current comment leader automatically.
                    " q         Allow formatting of comments with "gq".
                    " r         Automatically insert the current comment leader
                    "           after hitting <Enter> in Insert mode. 
                    " t         Auto-wrap text using textwidth (does not apply
                    "           to comments)
 
set ruler           " Show the line and column number of the cursor position,
                    " separated by a comma.
 
set background=light
                    " When set to "dark", Vim will try to use colors that look
                    " good on a dark background. When set to "light", Vim will
                    " try to use colors that look good on a light background.
                    " Any other value is illegal.
 
set mouse=a         " Enable the use of the mouse.
 
filetype plugin indent on
syntax on

" tab navigation like firefox
nnoremap <C-S-tab>  :tabprevious<CR>
nnoremap <C-tab>    :tabnext<CR>
nnoremap <C-t>      :tabnew<CR>
inoremap <C-S-tab>  <Esc>:tabprevious<CR>i
inoremap <C-tab>    <Esc>:tabnext<CR>i
inoremap <C-t>      <Esc>:tabnew<CR>
nnoremap <C-Insert> :tabnew<CR>
nnoremap <C-Delete> :tabclose<CR>

" use Windows-like shortcuts
" e.g. make vim behave like mswin-based text editors
" (because I'm still a n00b :D)
source $VIMRUNTIME/mswin.vim
behave mswin

" -possibly- certainly wrong way to map <Tab> and <Shift-Tab> to indentation
" and unindentation, respectively
"vnoremap <Tab> >gV
"vnoremap <S-Tab> <gV

" WARNING!!!
" DO NOT UNCOMMENT! DOES NOT WORK AND ALSO RENDERS VIM PRACTICALLY UNUSABLE!!!
" when <Esc> is pressed, clear search highlights
"nnoremap <esc> :noh<return><esc>

" (now NOT) correct way to <Tab> and <Shift-Tab> to indentation and
" unindentation, respectively
"
" for command mode
"nmap <S-Tab> <<
" for insert mode
"imap <S-Tab> <Esc><<i

" tap indent movement (use mark `m' for cursor position)
"vmap <S-Tab>  mm<`m:<C-U>exec "normal ".&shiftwidth."h"<CR>mmgv`m
"vmap <Tab>    mm>`m:<C-U>exec "normal ".&shiftwidth."l"<CR>mmgv`m

" block indent/unindent with <Tab>/<Shift-Tab>
vnoremap <Tab> >
vnoremap <S-Tab> <
nnoremap <Tab> >>
nnoremap <S-Tab> <<
"inoremap <Tab> <Esc>>>i
inoremap <S-Tab> <Esc><<i

" Pathogen -- Runtime Path Manipulation
execute pathogen#infect()

" Nerd tree toggle mapping
nnoremap <silent> <F7> :NERDTreeToggle<CR>
nnoremap <silent> <F8> :TlistToggle<CR>

map <C-Right> :bn<CR>
map <C-Left> :bp<CR>

" Color scheme: Solarized
"IT IS FUGLY!!1!!1!
"colorscheme solarized

" ctlrp.vim setup
set runtimepath^=~/.vim/bundle/ctrlp.vim

" neocomplete setup
let g:neocomplete#enable_at_startup = 1 

" SingleCompile setup
nmap <F9> :SCCompile<cr>
nmap <F10> :SCCompileRun<cr>

"
" Session management
"

function! MakeSession()
  let b:sessiondir = $HOME . "/.vim/sessions" . getcwd()
  if (filewritable(b:sessiondir) != 2)
    exe 'silent !mkdir -p ' b:sessiondir
    redraw!
  endif
  let b:filename = b:sessiondir . '/session.vim'
  exe "mksession! " . b:filename
endfunction

function! LoadSession()
  let b:sessiondir = $HOME . "/.vim/sessions" . getcwd()
  let b:sessionfile = b:sessiondir . "/session.vim"
  if (filereadable(b:sessionfile))
    exe 'source ' b:sessionfile
  else
    echo "No session loaded."
  endif
endfunction
au VimEnter * nested :call LoadSession()
au VimLeave * :call MakeSession()
