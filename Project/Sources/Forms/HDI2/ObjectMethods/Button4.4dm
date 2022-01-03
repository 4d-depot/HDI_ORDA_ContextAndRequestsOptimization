

var $list : Text
var $context : Object

$context:=New object:C1471("context"; "contextAddress")
$list:=""

For each ($address; ds:C1482("remoteDS").Address.all($context))
	
	$list:=$list+" / "+$address.city
	
End for each 

Form:C1466.contextAddress:=ds:C1482("remoteDS").getRemoteContextInfo("contextAddress")

Form:C1466.allContexts:=ds:C1482("remoteDS").getAllRemoteContexts()
