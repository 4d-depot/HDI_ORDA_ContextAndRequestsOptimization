
var $contextPersons : Object
var $listAttributes; $pageAttributes : Collection

If (btnTrace)
	TRACE:C157
End if 

Form:C1466.ds.clearAllRemoteContexts()
Form:C1466.ds.Persons.clearRemoteCache()
Form:C1466.ds.Persons.setRemoteCacheSettings(Form:C1466.normalCacheSettings)

$contextPersons:=New object:C1471("context"; "persons")

$listAttributes:=New collection:C1472("firstname"; "lastname")

Form:C1466.ds.setRemoteContextInfo("persons"; Form:C1466.ds.Persons; $listAttributes)

$pageAttributes:=New collection:C1472("firstname"; "lastname"; "children"; "gender")

Form:C1466.ds.setRemoteContextInfo("persons"; Form:C1466.ds.Persons; $pageAttributes; "currentItem")

Form:C1466.ds.startRequestLog(1000)

Form:C1466.persons:=Form:C1466.ds.Persons.all($contextPersons)

Form:C1466.log:=Form:C1466.ds.getRequestLog().reverse().filter("removeRelease")


SET TIMER:C645(6)