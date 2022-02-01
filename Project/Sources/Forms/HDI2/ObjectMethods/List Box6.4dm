
If (btnTrace)
	TRACE:C157
End if 

var codeWindow : Integer
var $data : Object

Case of 
	: (Form event code:C388=On Selection Change:K2:29)
		
		If (Num:C11(codeWindow)#0)
			CALL FORM:C1391(codeWindow; "fillResponse"; Form:C1466.selectedRequest)
		Else 
			codeWindow:=Open form window:C675("ViewResponse"; Plain form window:K39:10; Horizontally centered:K39:1; Vertically centered:K39:4)
			SET WINDOW TITLE:C213("View response"; codeWindow)
			$data:=New object:C1471("data"; Form:C1466.selectedRequest)
			DIALOG:C40("ViewResponse"; $data; *)
		End if 
		
End case 