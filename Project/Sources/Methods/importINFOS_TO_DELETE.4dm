//%attributes = {}


TRUNCATE TABLE:C1051([INFOS:1])
SET DATABASE PARAMETER:C642([INFOS:1]; Table sequence number:K37:31; 0)
$status:=ds:C1482.INFOS.all().drop()


$text:=Document to text:C1236("infos.txt")
$coll:=JSON Parse:C1218($text)
$persons:=ds:C1482.INFOS.fromCollection($coll)

