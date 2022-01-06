

var $list : Text
var $persons : cs:C1710.PersonsSelection

$list:=""

$persons:=Form:C1466.ds.Persons.query("gender = :1"; "Female")

For each ($person; $persons)
	$list:=$list+$person.firstname+" lives in "+$person.address.city+" / "
End for each 

Form:C1466.personsLearntAttributes:=$persons.getRemoteContextAttributes()

