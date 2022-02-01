
var $text : Text
var $address : cs:C1710.AddressEntity
var $contextAddress : Object

Form:C1466.ds.clearAllRemoteContexts()
Form:C1466.ds.Address.clearRemoteCache()

$text:=""

$contextAddress:=New object:C1471("context"; "contextAddress")

// The contextAddress is used
// The used attributes are recorded under this context
$address:=Form:C1466.ds.Address.get(1; $contextAddress)

$text:=$address.city+" "+$address.zipCode

Form:C1466.addressLearntAttributes:=$address.getRemoteContextAttributes()

