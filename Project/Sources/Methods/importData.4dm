//%attributes = {"invisible":true}

C_TEXT:C284($text)
C_COLLECTION:C1488($coll)
C_OBJECT:C1216($addresses; $persons)


TRUNCATE TABLE:C1051([Persons:2])
SET DATABASE PARAMETER:C642([Persons:2]; Table sequence number:K37:31; 0)
$status:=ds:C1482.Persons.all().drop()


TRUNCATE TABLE:C1051([Address:3])
SET DATABASE PARAMETER:C642([Address:3]; Table sequence number:K37:31; 0)
$status:=ds:C1482.Address.all().drop()



$text:=Document to text:C1236(Get 4D folder:C485(Current resources folder:K5:16)+"adresses.txt")
$coll:=JSON Parse:C1218($text)
$addresses:=ds:C1482.Address.fromCollection($coll)

$text:=Document to text:C1236(Get 4D folder:C485(Current resources folder:K5:16)+"persons.txt")
$coll:=JSON Parse:C1218($text)
$persons:=ds:C1482.Persons.fromCollection($coll)

//C_OBJECT($person; $address; $status)

//$a:=ds.Address.all().last()
//$a1:=$a.previous()
//$a2:=$a1.previous()

//$person:=ds.Persons.get(1)
//$person.address:=$a
//$status:=$person.save()

//$person:=ds.Persons.get(2)
//$person.address:=$a
//$status:=$person.save()

//$person:=ds.Persons.get(3)
//$person.address:=$a
//$status:=$person.save()

////

//$person:=ds.Persons.get(4)
//$person.address:=$a1
//$status:=$person.save()

//$person:=ds.Persons.get(5)
//$person.address:=$a1
//$status:=$person.save()

//$person:=ds.Persons.get(6)
//$person.address:=$a1
//$status:=$person.save()
////

//$person:=ds.Persons.get(7)
//$person.address:=$a2
//$status:=$person.save()

//$person:=ds.Persons.get(8)
//$person.address:=$a2
//$status:=$person.save()

//$person:=ds.Persons.get(9)
//$person.address:=$a2
//$status:=$person.save()

//$toDrop:=ds.Address.all().slice(0; ds.Address.all().length-3)
//$notDropped:=$toDrop.drop()

//$toDrop:=ds.Persons.query("ID >= :1"; 10)
//$notDropped:=$toDrop.drop()