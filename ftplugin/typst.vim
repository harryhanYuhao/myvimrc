vim9script 
var viewerOpened = 0
var localFileName = expand("%")
var localFileNameOnly = expand("%:t:r")
var localFileNamePdf = expand("%:t:r") .. ".pdf"

# note that global variable does not need to be declared.
g:typstCompileOnSave = 1
g:typstPdfViewer = "zathura"

def OpenViewer(timerId: number): void
	if ! viewerOpened
		viewerOpened = 1
		var name = $"{localFileNamePdf}"
		# handling errors:
		if executable($"{g:typstPdfViewer}")
			silent exec $"!{g:typstPdfViewer} {name} &"
			echow $"Viewer Opened ({g:typstPdfViewer}) for {localFileNamePdf}"
		else
			echoe $"Typst Plugin: executable for {g:typstPdfViewer} not found!"
		endif
	endif
	return
enddef

def Compile(): void
	var tmp = system($"typst compile {localFileName}")
	if v:shell_error != 0
		echoe $"TYPST Plugin: Compilation Failed. Failed to exec \"typst compile {localFileName}\""
	else
		echow $"{localFileName} Compiled!"
	endif
enddef

def CompileViewOnBufWritePost(timerId: number)
	Compile()
	timer_start(0, 'OpenViewer')
enddef

au! BufWritePost *.typ {
	:silent vim9cmd timer_start(0, 'CompileViewOnBufWritePost')
}
