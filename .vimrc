if empty($DISPLAY)
    source $VIMRUNTIME/defaults.vim
else
    " This is the oh my vim directory
    let $OH_MY_VIM=$HOME."/.oh-my-vim"
    let &runtimepath=substitute(&runtimepath, '^', $OH_MY_VIM.",", 'g')

    " Select the packages you need
    let g:oh_my_vim_packages=[
                \'vim',
                \'basic',
                \'code',
                \'text',
                \'grep',
                \'searching',
                \'registers',
                \'navigation',
                \'files',
                \'git',
                \'python',
                \'web',
                \'tools',
                \'markdown',
                \'bookmarks',
                \'sessions',
                \'spelling',
                \'neobundle',
                \'golang'
                \]

    exec ':so ' $OH_MY_VIM."/vimrc"

    " enable mouse behavior
    set mouse=a
endif

nnoremap <silent> <M-Left> :bp<CR>
nnoremap <silent> <M-Right> :bn<CR>

set norelativenumber

set hidden

call neobundle#begin(expand($OH_MY_VIM.'/bundle/'))
NeoBundle 'lambdalisue/suda.vim'
call neobundle#end()

" disable because of security vulnerabilities
set nomodeline
