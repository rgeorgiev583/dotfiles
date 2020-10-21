if exists('g:switch_header_source#loaded')
    finish
endif
let g:switch_header_source#loaded = 1

let g:switch_header_source#file_ext_mapping = {'h': ['c', 'cc', 'cpp', 'cxx', 'm', 'mm'], 'hh': ['cc', 'mm'], 'hpp': ['cpp'], 'hxx': ['cxx'], 'c': ['h'], 'cc': ['h', 'hh'], 'cpp': ['h', 'hpp'], 'cxx': ['h', 'hxx'], 'm': ['h'], 'mm': ['h', 'hh']}

command SwitchHeaderSource :call switch_header_source#SwitchHeaderSource()
