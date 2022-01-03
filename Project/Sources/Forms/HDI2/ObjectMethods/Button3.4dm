

var $list : Text
var $context : Object

$context:=New object:C1471("context"; "contextPersons")
$list:=""

For each ($person; ds:C1482("remoteDS").Persons.all($context))
	
	$list:=$list+" / "+$person.firstname
	
End for each 

Form:C1466.contextPersons:=ds:C1482("remoteDS").getRemoteContextInfo("contextPersons")

Form:C1466.allContexts:=ds:C1482("remoteDS").getAllRemoteContexts()