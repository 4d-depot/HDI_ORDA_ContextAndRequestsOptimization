

var $contextPersons : Object
var $attributes : Collection

If (btnTrace)
	TRACE:C157
End if 

//OBJECT SET SCROLL POSITION(*; "LBPersons1"; 1)

Form:C1466.ds.clearAllRemoteContexts()
Form:C1466.ds.Persons.clearRemoteCache()
Form:C1466.ds.Address.clearRemoteCache()

$contextPersons:=New object:C1471("context"; "persons")

$attributes:=New collection:C1472("firstname"; "address.city")

Form:C1466.ds.setRemoteContextInfo("persons"; Form:C1466.ds.Persons; $attributes)

Form:C1466.ds.startRequestLog(1000)

Form:C1466.persons:=Form:C1466.ds.Persons.all($contextPersons)

Form:C1466.log:=Form:C1466.ds.getRequestLog().reverse().filter("removeRelease")


