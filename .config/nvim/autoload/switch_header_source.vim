function switch_header_source#SwitchHeaderSource()
	let file_ext = expand('%:e')
	if has_key(g:switch_header_source#file_ext_mapping, file_ext)
		for source_file_ext in g:switch_header_source#file_ext_mapping[file_ext]
			try
				execute 'find ' . expand('%:t:r') . '.' . source_file_ext
				break
			catch /^Vim(find):/
			endtry
		endfor
	endif
endfunction
