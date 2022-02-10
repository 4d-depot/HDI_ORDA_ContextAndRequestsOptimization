

var $list : Text
var $shortAddress : Object
var $address : cs:C1710.AddressEntity

If (btnTrace)
	TRACE:C157
End if 

$shortAddress:=New object:C1471("context"; "shortAddress")
$list:=""

For each ($address; Form:C1466.ds.Address.all($shortAddress))
	$list:=$list+$address.city+" / "
End for each 

Form:C1466.contextAddress:=Form:C1466.ds.getRemoteContextInfo("shortAddress")
Form:C1466.allContexts:=Form:C1466.ds.getAllRemoteContexts()
