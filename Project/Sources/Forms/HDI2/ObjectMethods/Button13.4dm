

var $contextAddress : Object


Form:C1466.ds.clearAllRemoteContexts()
Form:C1466.ds.Persons.clearRemoteCache()
Form:C1466.ds.Address.clearRemoteCache()


$contextAddress:=New object:C1471("context"; "address")
Form:C1466.ds.setRemoteContextInfo("address"; Form:C1466.ds.Address; "city"; "main"; 20)
Form:C1466.ds.setRemoteContextInfo("address"; Form:C1466.ds.Address; "persons:10"; "persons.lastname"; "currentItem")

Form:C1466.ds.startRequestLog(1000)

Form:C1466.addresses:=Form:C1466.ds.Address.all($contextAddress)

Form:C1466.log:=Form:C1466.ds.getRequestLog().reverse().filter("removeRelease")


