
If (btnTrace)
	TRACE:C157
End if 

var $person : cs:C1710.PersonsEntity
var $all : cs:C1710.PersonsSelection
var $list : Text

$list:=""

$all:=Form:C1466.ds.Persons.all()

For each ($person; $all)
	$list:=$list+$person.firstname+" /"
End for each 

Form:C1466.remoteCacheSettings:=Form:C1466.ds.Persons.getRemoteCache()
