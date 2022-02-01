

If (btnTrace)
	TRACE:C157
End if 

var $settings : Object

$settings:=New object:C1471
$settings.timeout:=Form:C1466.timeout
$settings.maxEntries:=Form:C1466.maxEntries

Form:C1466.ds.Persons.setRemoteCacheSettings($settings)

Form:C1466.remoteCacheSettings:=Form:C1466.ds.Persons.getRemoteCache()