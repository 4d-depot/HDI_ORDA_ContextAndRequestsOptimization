

var $list : Text
var $firstnames : Object
var $person : cs:C1710.PersonsEntity

If (btnTrace)
	TRACE:C157
End if 

$firstnames:=New object:C1471("context"; "firstnames")
$list:=""

For each ($person; Form:C1466.ds.Persons.all($firstnames))
	$list:=$list+$person.firstname+" / "
End for each 

Form:C1466.contextPersons:=Form:C1466.ds.getRemoteContextInfo("firstnames")
Form:C1466.allContexts:=Form:C1466.ds.getAllRemoteContexts()