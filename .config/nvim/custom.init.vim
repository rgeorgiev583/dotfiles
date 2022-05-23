"Custom configurations
"silent! colorscheme one

set path^=/usr/include/c++/*,/usr/include/c++/*/*-*-*,/usr/include/c++/*/backward,/usr/lib/gcc/*-*-*/*/include,/usr/local/include,/usr/lib/gcc/*-*-*/*/include-fixed
"set grepprg=rg

" use Alt+Left/Alt+Right to navigate between buffers
nmap <silent> <A-Left> :bp<CR>
nmap <silent> <A-Right> :bn<CR>
nmap <silent> <leader><Left> :bp<CR>
nmap <silent> <leader><Right> :bn<CR>
nmap <silent> ;<Left> :bp<CR>
nmap <silent> ;<Right> :bn<CR>
"nmap <silent> <leader>h :bp<CR>
"nmap <silent> <leader>l :bn<CR>
nmap <silent> ;h :bp<CR>
nmap <silent> ;l :bn<CR>

" enable switching to another buffer when there are unsaved changes in the current one
set hidden

" disable modeline because of security vulnerabilities
set nomodeline

" enable reading of a Neovim configuration file from the current directory
set exrc
set secure

function ToggleDisplayState(state_variable, show_action, hide_action, default_state)
	if get(g:, a:state_variable, a:default_state)
		execute a:hide_action
		execute 'let g:' . a:state_variable . ' = 0'
	else
		execute a:show_action
		execute 'let g:' . a:state_variable . ' = 1'
	endif
endfunction

" use Leader+L to toggle the location window
"nmap <silent> <leader>L :call ToggleDisplayState('is_lwindow_open', 'lopen', 'lclose', 0)<CR>
nmap <silent> <leader>L :lopen<CR>
nmap <silent> <leader>k :Lprev<CR>

" use Leader+Leader to go to normal mode
vnoremap <leader><leader> <ESC>
inoremap <leader><leader> <ESC>

"set tags+=.tags

nunmap <leader>d
nmap <silent> <leader>dd :bd<CR>

"execute 'command -nargs=* -bang Makej make<bang> -j' . system('nproc') . ' <args>'
"nmap <silent> <leader>B :Makej!<CR>

" use Leader+Q to toggle the quickfix window
"nmap <silent> <leader>Q :call ToggleDisplayState('is_cwindow_open', 'cwindow', 'cclose', 0)<CR>
nmap <silent> <leader>Q :cwindow<CR>
nmap <silent> <leader>N :Cprev<CR>

nmap <silent> <leader>w :w<CR>

nnoremap <A-Up> <C-U>
nnoremap <A-Down> <C-D>
nnoremap <leader><Up> <C-U>
nnoremap <leader><Down> <C-D>
nnoremap ;<Up> <C-U>
nnoremap ;<Down> <C-D>
nnoremap <leader>k <C-U>
nnoremap <leader>j <C-D>
nnoremap ;k <C-U>
nnoremap ;j <C-D>

"nmap <silent> <A-/> :nohl<CR>

nmap <silent> <leader>x :x<CR>

" retain selection after indenting/unindenting
vnoremap > >gv
vnoremap < <gv

autocmd FocusGained,BufEnter,CursorHold,CursorHoldI * checktime

" search in selection
vnoremap <A-/> <Esc>/\%V

nmap <silent> <leader>e :Explore<CR>

set wrap

nmap <silent> <leader>B :CtrlPBuffer<CR>

""" Plugin config

"augroup Flog
    "autocmd FileType floggraph nnoremap <buffer> <silent> <CR> :belowright Flogsplitcommit<CR>
"augroup END

"" vim-better-whitespace extension config
" disable automatic stripping of trailing whitespace
"autocmd! BufWritePre *

"" ctrlp.vim/fzf.vim config
" use <leader>m to search through the MRU list using ctrlp.vim
nmap <silent> <leader>m :CtrlPMRU<CR>
" use Ctrl+P for fzf.vim instead of ctrlp.vim
"let g:ctrlp_map = ''
"let g:ctrlp_cmd = ''
nmap <silent> <leader>p :FZF<CR>
" use <leader>fzi to hide ignored files from FZF
nmap <silent> <leader>fzi :call fzf#run({'source': 'fd -H -t f -t l 2> /dev/null'})<CR>

"" ALE config
" disable LSP-based C/C++ linters (ccls, clangd and cquery), as well as cppcheck, as they consume too much CPU and RAM
"let g:ale_linters = {'c': ['clang', 'clangtidy', 'flawfinder', 'gcc'], 'cpp': ['clang', 'clangcheck', 'clangtidy', 'clazy', 'cpplint', 'flawfinder', 'gcc']}
let g:ale_linters = {'c': [], 'cpp': []}
"let g:ale_linters.python = ['flake8', 'mypy', 'pylint', 'pyls']
let g:ale_completion_enabled = 1

"" NERDCommenter config
" map the NERDCommenterInvert command to Ctrl+/
nmap <silent> <leader>/ :call NERDComment('n', 'Invert')<CR>
xmap <silent> <leader>/ :call NERDComment('x', 'Invert')<CR>

"" NERDTree config
"nmap <silent> <C-n> :NERDTreeToggle<CR>
nmap <silent> <leader>t :NERDTreeToggle<CR>

"" vim-indent-guides config
" enable indent guides by default
let g:indent_guides_enable_on_vim_startup = 1

"" Vim-Goto-Header config
"nmap <silent> <F12> :GotoHeader<CR>
"nmap <silent> <leader><F12> :GotoHeaderSwitch<CR>
nmap <silent> <F12> :SwitchHeaderSource<CR>
"let g:goto_header_associate_cpp_h = 1

"" Tagbar config
nmap <silent> <F8> :TagbarOpenAutoClose<CR>
nmap <silent> <leader><F8> :Tagbar<CR>

"" ag.vim config
"nmap <silent> <leader>F :Ag<CR>
"let g:ag = {}
"let g:ag.prg = 'ag --vimgrep -u'

"" vim-ripgrep config
"let g:rg_binary = 'rg'
"let g:rg_command = g:rg_binary . ' --vimgrep --hidden --no-ignore'

"" esearch config
"call esearch#map('<leader>f', 'esearch')

"" vimspector config
let g:vimspector_install_gadgets = ['vscode-cpptools']

let g:vimspector_sign_priority = {
  \    'vimspectorBP':         50,
  \    'vimspectorPC':         70,
  \ }

nmap <F5>         <Plug>VimspectorContinue
nmap <F3>         <Plug>VimspectorStop
nmap <F4>         <Plug>VimspectorRestart
nmap <F6>         <Plug>VimspectorPause
nmap <F9>         <Plug>VimspectorToggleBreakpoint
nmap <leader><F9> <Plug>VimspectorToggleConditionalBreakpoint
nmap <F10>        <Plug>VimspectorStepOver
nmap <F11>        <Plug>VimspectorStepInto

nmap <silent> <C-D> :call ToggleDisplayState('is_vimspector_open', 'call vimspector#Launch()', 'VimspectorReset', 0)<CR>
command -nargs=1 D call vimspector#LaunchWithSettings({'configuration': '<args>'})
nmap <leader><F11> <Plug>VimspectorStepOut
nmap <leader>dtb :call vimspector#ToggleBreakpoint
nmap <leader>dfb <Plug>VimspectorAddFunctionBreakpoint
nmap <leader>dafb :call vimspector#AddFunctionBreakpoint
nmap <silent> <leader>dlb :call vimspector#ListBreakpoints()<CR>
nmap <silent> <leader>dcb :call vimspector#ClearBreakpoints()<CR>
"sign define vimspectorBP text=🔴 texthl=Normal
"sign define vimspectorBPDisabled text=🔵 texthl=Normal
"sign define vimspectorPC text=🔶 texthl=SpellBad

"" syntastic config
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_check_on_open = 1

"" vim-autotag config
"let g:autotagTagsFile = '.tags'

"" vim-gitgutter config
nmap <leader>ghs <Plug>(GitGutterStageHunk)
nmap <leader>ghu <Plug>(GitGutterUndoHunk)
nmap <leader>ghp <Plug>(GitGutterPreviewHunk)
vmap <leader>ghs <Plug>(GitGutterStageHunk)
vmap <leader>ghu <Plug>(GitGutterUndoHunk)
vmap <leader>ghp <Plug>(GitGutterPreviewHunk)

"" deoplete config
"let g:deoplete#enable_at_startup = 1

"" ferret config
"let g:FerretExecutableArguments = { 'rg': '--vimgrep --no-heading --no-config --max-columns 4096 --hidden --ignore-vcs' }
nmap <leader>S <Plug>(FerretAckWord)
let g:FerretAckWordWord = 1

"" fzf.vim config
nnoremap <leader>s :Rg <C-r><C-w><CR>

"" neomake config
let g:neomake_open_list = 2

"" gutentags config

" enable gtags module
"let g:gutentags_modules = ['ctags', 'gtags_cscope']

" config project root markers.
"let g:gutentags_project_root = ['.root']

" generate datebases in my cache directory, prevent gtags files polluting my project
let g:gutentags_cache_dir = expand('~/.cache/tags')

" change focus to quickfix window after search (optional).
"let g:gutentags_plus_switch = 1

" enable all kinds of tags for C++
let g:gutentags_ctags_extra_args = ['--kinds-C++=*']

nmap <silent> <leader>fa :Autoformat<CR>
