C_LONGINT:C283($i; _TabTitles)
C_BOOLEAN:C305(btnTrace)
C_OBJECT:C1216($item)

If (btnTrace)
	TRACE:C157
End if 


Case of 
		
	: (Form event code:C388=On Load:K2:1)
		
		_TabTitles:=New list:C375
		ARRAY TEXT:C222(_Descriptions; 0)
		ARRAY TEXT:C222(_TabLineCode; 0)
		
		READ ONLY:C145([INFOS:1])
		
		QUERY:C277([INFOS:1]; [INFOS:1]PageNumber:4; "<="; 9)
		ORDER BY:C49([INFOS:1]; [INFOS:1]PageNumber:4; >)
		SELECTION TO ARRAY:C260([INFOS:1]Description:2; _Descriptions)
		
		For ($i; 1; Records in selection:C76([INFOS:1]))
			GOTO SELECTED RECORD:C245([INFOS:1]; $i)
			APPEND TO LIST:C376(_TabTitles; [INFOS:1]TabTitle:3; $i)
		End for 
		
		
		QUERY:C277([INFOS:1]; [INFOS:1]PageNumber:4; ">="; 10)
		ORDER BY:C49([INFOS:1]; [INFOS:1]PageNumber:4; >)
		SELECTION TO ARRAY:C260([INFOS:1]Description:2; _TabLineCode)
		
		$connect:=New object:C1471("hostname"; "127.0.0.1:8044"; "user"; "HDI")
		Form:C1466.ds:=Open datastore:C1452($connect; "remoteDS")
		
		Form:C1466.timeout:=40
		Form:C1466.maxEntries:=4000
		Form:C1466.remoteCacheSettings:=New object:C1471()
		
		viewTrace
		manageTexts
		RW
		
		
	: (Form event code:C388=On Page Change:K2:54)
		
		Form:C1466.ds.clearAllRemoteContexts()
		Form:C1466.ds.Persons.clearRemoteCache()
		Form:C1466.ds.Address.clearRemoteCache()
		
		Form:C1466.remoteCacheSettings:=Form:C1466.ds.Persons.getRemoteCache()
		
		
		Form:C1466.addresses:=Null:C1517
		
		Form:C1466.ds.stopRequestLog()
		
End case 