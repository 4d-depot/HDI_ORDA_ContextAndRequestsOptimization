
var $text : Text
var $address : cs:C1710.AddressEntity
var $shortAddress : Object

If (btnTrace)
	TRACE:C157
End if 

Form:C1466.ds.clearAllRemoteContexts()
Form:C1466.ds.Address.clearRemoteCache()

$text:=""

$shortAddress:=New object:C1471("context"; "shortAddress")

// The shortAddress context  is used
// The used attributes are recorded under this context
$address:=Form:C1466.ds.Address.get(1; $shortAddress)

$text:=$address.city+" "+$address.zipCode

Form:C1466.addressLearntAttributes:=$address.getRemoteContextAttributes()

