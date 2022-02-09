//%attributes = {}
//$list:=""

//For each ($person; ds.Persons.all())
//$list:=$list+$person.firstname+" /"
//End for each 


$coll:=ds:C1482.Persons.all().toCollection()
$text:=JSON Stringify:C1217($coll; *)
TEXT TO DOCUMENT:C1237("personsBig"; $text)  //



$coll:=ds:C1482.Address.all().toCollection()
$text:=JSON Stringify:C1217($coll; *)
TEXT TO DOCUMENT:C1237("addressesBig"; $text)