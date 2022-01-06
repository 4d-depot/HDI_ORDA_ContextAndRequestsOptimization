

Form:C1466.ds.clearAllRemoteContexts()
Form:C1466.ds.Persons.clearRemoteCache()

Form:C1466.ds.startRequestLog(1000)

$contextPersons:=New object:C1471("context"; "persons")
Form:C1466.persons:=Form:C1466.ds.Persons.all($contextPersons)

Form:C1466.log:=Form:C1466.ds.getRequestLog().reverse()



