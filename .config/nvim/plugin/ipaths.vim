if exists('g:ipaths#loaded')
    finish
endif
let g:ipaths#loaded = 1

let g:ipaths#file_name = '.ipaths'

if filereadable(g:ipaths#file_name)
    execute 'set path^=' . join(readfile(g:ipaths#file_name), ',')
endif
