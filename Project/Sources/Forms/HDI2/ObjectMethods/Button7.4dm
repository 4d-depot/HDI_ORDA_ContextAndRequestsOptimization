
var $text : Text
var $address : cs:C1710.AddressEntity

$text:=""

$contextAddress:=New object:C1471("context"; "contextAddress")

$address:=Form:C1466.ds.Address.get(1; $contextAddress)
$text:=$address.city+" "+$address.zipCode

Form:C1466.addressLearntAttributes:=$address.getContextAttributes()

