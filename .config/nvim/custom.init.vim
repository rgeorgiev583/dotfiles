"Custom configurations
"silent! colorscheme one

" use Alt+Left/Alt+Right to navigate between buffers
nnoremap <silent> <M-Left> :bp<CR>
nnoremap <silent> <M-Right> :bn<CR>

" enable switching to another buffer when there are unsaved changes in the current one
set hidden

" disable modeline because of security vulnerabilities
set nomodeline
