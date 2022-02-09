//%attributes = {}


TRUNCATE TABLE:C1051([Persons:2])
SET DATABASE PARAMETER:C642([Persons:2]; Table sequence number:K37:31; 0)
$status:=ds:C1482.Persons.all().drop()

TRUNCATE TABLE:C1051([Address:3])
SET DATABASE PARAMETER:C642([Address:3]; Table sequence number:K37:31; 0)
$status:=ds:C1482.Address.all().drop()


$text:=Document to text:C1236(Get 4D folder:C485(Current resources folder:K5:16)+"personsBig.txt")
$coll:=JSON Parse:C1218($text)
$persons:=ds:C1482.Persons.fromCollection($coll)


$text:=Document to text:C1236(Get 4D folder:C485(Current resources folder:K5:16)+"addressesBig.txt")
$coll:=JSON Parse:C1218($text)
$addresses:=ds:C1482.Address.fromCollection($coll)