

var $list : Text
var $context : Object
var $person : cs:C1710.PersonsEntity

If (btnTrace)
	TRACE:C157
End if 

$context:=New object:C1471("context"; "contextPersons")
$list:=""

For each ($person; Form:C1466.ds.Persons.all($context))
	
	$list:=$list+$person.firstname+" / "
	
End for each 

Form:C1466.contextPersons:=Form:C1466.ds.getRemoteContextInfo("contextPersons")

Form:C1466.allContexts:=Form:C1466.ds.getAllRemoteContexts()