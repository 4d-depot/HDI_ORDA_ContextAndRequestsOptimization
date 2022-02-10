
If (btnTrace)
	TRACE:C157
End if 

var $person : cs:C1710.PersonsEntity
var $list : Text

$list:=""

Form:C1466.ds.startRequestLog(1000)

For each ($person; Form:C1466.ds.Persons.query("firstname = :1"; "John@"))
	$list:=$list+$person.firstname+" /"
End for each 

Form:C1466.remoteCacheSettings:=Form:C1466.ds.Persons.getRemoteCache()
