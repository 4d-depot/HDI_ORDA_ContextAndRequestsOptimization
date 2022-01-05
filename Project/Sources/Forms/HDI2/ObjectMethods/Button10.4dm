


$contextPersons:=New object:C1471("context"; "persons")

$attributes:=New collection:C1472("firstname"; "lastname")

Form:C1466.ds.setRemoteContextInfo("persons"; Form:C1466.ds.Persons; $attributes; "main"; 10)

Form:C1466.ds.startRequestLog(1000)

Form:C1466.persons:=Form:C1466.ds.Persons.all($contextPersons)

Form:C1466.log:=Form:C1466.ds.getRequestLog().reverse()


