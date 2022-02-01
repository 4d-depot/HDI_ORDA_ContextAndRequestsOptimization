
If (btnTrace)
	TRACE:C157
End if 

var $person : cs:C1710.PersonsEntity
var $list : Text

$list:=""

For each ($person; Form:C1466.ds.Persons.all())
	$list:=$list+$person.firstname+" /"
End for each 

Form:C1466.remoteCacheSettings:=Form:C1466.ds.Persons.getRemoteCache()
