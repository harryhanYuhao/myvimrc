function Compile()
	let command = "agda --compile %:t"
	let red = "\033[31m"
	let reset = "\033[0m"
	let separator = "------------------------"
	exec "!echo; echo " .. separator .. "; echo ; echo " .. red .. command .. reset "; echo;"command 
	"exec "!echo " .. red .. command .. reset "; echo;"command 
endfunction

function Run()
	let command = "./%:t:r"
	let red = "\033[31m"
	let reset = "\033[0m"
	let separator = "------------------------"
	exec "!echo; echo " .. separator .. "; echo ; echo " .. red .. command .. reset "; echo; " command
endfunction

	

"nnoremap <F3> :!echo ./"%:t:r"; ./"%:t:r" <CR>
nnoremap <F3> :call Run() <CR>
inoremap <F3> <Esc>:call Compile() <CR>
