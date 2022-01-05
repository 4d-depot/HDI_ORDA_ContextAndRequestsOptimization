


$contextAddress:=New object:C1471("context"; "addresses")

$attributes:=New collection:C1472("city"; "zipCode"; "persons.firstname"; "persons:20")

Form:C1466.ds.setRemoteContextInfo("addresses"; Form:C1466.ds.Address; $attributes; "main"; 10)

Form:C1466.ds.startRequestLog(1000)

Form:C1466.addresses:=Form:C1466.ds.Address.all($contextAddress)

Form:C1466.log:=Form:C1466.ds.getRequestLog().reverse()


