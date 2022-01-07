
Form:C1466.ds.clearAllRemoteContexts()
Form:C1466.ds.Persons.clearRemoteCache()
Form:C1466.ds.Address.clearRemoteCache()


$contextAddress:=New object:C1471("context"; "address")

$attributes:=New collection:C1472("city"; "persons:5"; "persons.lastname")

Form:C1466.ds.setRemoteContextInfo("address"; Form:C1466.ds.Address; $attributes; "main"; 10)

Form:C1466.ds.startRequestLog(1000)

Form:C1466.addresses:=Form:C1466.ds.Address.all($contextAddress)

//Form.addresses:=Form.ds.Address.all()

Form:C1466.log:=Form:C1466.ds.getRequestLog().reverse()


