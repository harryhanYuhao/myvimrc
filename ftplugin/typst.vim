function! EchoWarning(msg)
	redraw | echohl WarningMsg
	echo "Warning"
	echohl None
	echon ': ' a:msg
endfunction

au BufWrite *typ {
	:term ++hidden typst compile "%" 
#	call EchoWarning("typst compiled")
	echow "typst compiled! (~/.vim/ftplugin/typst.vim)"
}

