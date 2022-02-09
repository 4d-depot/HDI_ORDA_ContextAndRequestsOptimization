
If (btnTrace)
	TRACE:C157
End if 


Form:C1466.log:=Form:C1466.ds.getRequestLog().reverse().filter("removeRelease")
