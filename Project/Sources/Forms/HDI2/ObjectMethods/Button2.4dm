

var $list : Text

$list:=""

For each ($person; ds:C1482("remoteDS").Persons.all())
	
	$list:=$list+" /"+$person.firstname
	
End for each 

Form:C1466.remoteCacheSettings:=ds:C1482("remoteDS").Persons.getRemoteCache()
