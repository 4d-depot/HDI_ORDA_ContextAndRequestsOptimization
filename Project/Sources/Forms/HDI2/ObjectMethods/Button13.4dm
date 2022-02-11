

var $contextAddress : Object
var $pageAttributes : Text

If (btnTrace)
	TRACE:C157
End if 

Form:C1466.ds.clearAllRemoteContexts()
Form:C1466.ds.Persons.clearRemoteCache()
Form:C1466.ds.Address.clearRemoteCache()
Form:C1466.ds.Persons.setRemoteCacheSettings(Form:C1466.longCacheSettings)
Form:C1466.ds.Address.setRemoteCacheSettings(Form:C1466.longCacheSettings)

$contextAddress:=New object:C1471("context"; "address")
Form:C1466.ds.setRemoteContextInfo("address"; Form:C1466.ds.Address; "city"; "main"; 50)

$pageAttributes:="persons:10, persons.lastname"
Form:C1466.ds.setRemoteContextInfo("address"; Form:C1466.ds.Address; $pageAttributes; "currentItem")

Form:C1466.ds.startRequestLog(1000)

Form:C1466.addresses:=Form:C1466.ds.Address.all($contextAddress)

Form:C1466.log:=Form:C1466.ds.getRequestLog().reverse().filter("removeRelease")

SET TIMER:C645(6)
