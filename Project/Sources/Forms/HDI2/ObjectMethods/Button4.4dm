

var $list : Text
var $context : Object

$context:=New object:C1471("context"; "contextAddress")
$list:=""

For each ($address; Form:C1466.ds.Address.all($context))
	
	$list:=$list+" / "+$address.city
	
End for each 

Form:C1466.contextAddress:=Form:C1466.ds.getRemoteContextInfo("contextAddress")

Form:C1466.allContexts:=Form:C1466.ds.getAllRemoteContexts()
