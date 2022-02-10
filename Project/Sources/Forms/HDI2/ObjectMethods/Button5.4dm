
If (btnTrace)
	TRACE:C157
End if 

Form:C1466.ds.clearAllRemoteContexts()

Form:C1466.contextPersons:=Form:C1466.ds.getRemoteContextInfo("firstnames")

Form:C1466.contextAddress:=Form:C1466.ds.getRemoteContextInfo("shortAddress")

Form:C1466.allContexts:=Form:C1466.ds.getAllRemoteContexts()
