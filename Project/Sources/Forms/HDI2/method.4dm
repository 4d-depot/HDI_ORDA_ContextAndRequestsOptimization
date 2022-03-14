

var $i; _TabTitles : Integer
var btnTrace : Boolean
var $connect : Object

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
		
		Form:C1466.longCacheSettings:=New object:C1471("timeout"; 180)
		Form:C1466.normalCacheSettings:=New object:C1471("timeout"; 30)
		
		viewTrace
		manageTexts
		RW
		
		
	: (Form event code:C388=On Page Change:K2:54)
		
		Form:C1466.ds.clearAllRemoteContexts()
		Form:C1466.ds.Persons.clearRemoteCache()
		Form:C1466.ds.Address.clearRemoteCache()
		Form:C1466.ds.stopRequestLog()
		
		//Page 2
		Form:C1466.remoteCacheSettings:=Form:C1466.ds.Persons.getRemoteCache()
		Form:C1466.timeout:=10
		Form:C1466.maxEntries:=4000
		
		//Page 3
		Form:C1466.personsLearntAttributes:=""
		Form:C1466.addressLearntAttributes:=""
		
		//Page 4
		Form:C1466.contextPersons:=""
		Form:C1466.contextAddress:=""
		Form:C1466.allContexts:=""
		
		//Page 5 - 6 - 7
		Form:C1466.persons:=Null:C1517
		Form:C1466.log:=Null:C1517
		Form:C1466.addresses:=Null:C1517
		
		viewTrace
		RW
		
	: (Form event code:C388=On Timer:K2:25)
		SET TIMER:C645(0)
		Form:C1466.log:=Form:C1466.ds.getRequestLog().reverse().filter("removeRelease")
		
End case 