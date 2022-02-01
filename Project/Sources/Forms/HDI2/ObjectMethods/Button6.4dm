

var $list : Text
var $persons : cs:C1710.PersonsSelection
var $person : cs:C1710.PersonsEntity

Form:C1466.ds.clearAllRemoteContexts()
Form:C1466.ds.Persons.clearRemoteCache()

$list:=""

// No context is used - The attributes are recorded under an internal context
$persons:=Form:C1466.ds.Persons.query("gender = :1"; "Female")

For each ($person; $persons)
	$list:=$list+$person.firstname+" lives in "+$person.address.city+" / "
End for each 

Form:C1466.personsLearntAttributes:=$persons.getRemoteContextAttributes()

