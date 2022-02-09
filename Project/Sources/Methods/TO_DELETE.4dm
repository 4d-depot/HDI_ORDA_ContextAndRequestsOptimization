//%attributes = {}
//$list:=""

//For each ($person; ds.Persons.all())
//$list:=$list+$person.firstname+" /"
//End for each 


$coll:=ds:C1482.INFOS.all().toCollection()
$text:=JSON Stringify:C1217($coll; *)
TEXT TO DOCUMENT:C1237("infos.txt"; $text)  //

//$coll:=ds.Persons.all().toCollection()
//$text:=JSON Stringify($coll; *)
//TEXT TO DOCUMENT("personsBig"; $text)  //



//$coll:=ds.Address.all().toCollection()
//$text:=JSON Stringify($coll; *)
//TEXT TO DOCUMENT("addressesBig"; $text)