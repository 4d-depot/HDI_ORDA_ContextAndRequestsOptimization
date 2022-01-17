
var $text : Text
var $address : cs:C1710.AddressEntity

Form:C1466.ds.clearAllRemoteContexts()
Form:C1466.ds.Address.clearRemoteCache()

$text:=""

$contextAddress:=New object:C1471("context"; "contextAddress")

//$address:=Form.ds.Address.get(1; $contextAddress)

$address:=Form:C1466.ds.Address.get(1)

$text:=$address.city+" "+$address.zipCode

Form:C1466.addressLearntAttributes:=$address.getContextAttributes()

