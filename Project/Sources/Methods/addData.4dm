//%attributes = {}


TRUNCATE TABLE:C1051([Persons:2])
SET DATABASE PARAMETER:C642([Persons:2]; Table sequence number:K37:31; 0)
$status:=ds:C1482.Persons.all().drop()

TRUNCATE TABLE:C1051([Address:3])
SET DATABASE PARAMETER:C642([Address:3]; Table sequence number:K37:31; 0)
$status:=ds:C1482.Address.all().drop()

FakeData_ArraysInit

$template:=New object:C1471()
$templateAddress:=New object:C1471()

$template.firstname:="firstname"
$template.lastname:="lastname"
$template.tempGender:="gender"
$templateAddress.city:="city"
$templateAddress.zipCode:="zipCode"

For ($i; 1; 3)
	$address:=ds:C1482.Address.new()
	FakeData_FillObjectTemplate($templateAddress; $address)
	If (Length:C16($address.zipCode)<=4)
		$address.zipCode:="0"+$address.zipCode
	End if 
	$status:=$address.save()
	
	For ($j; 1; 4)
		$person:=ds:C1482.Persons.new()
		FakeData_FillObjectTemplate($template; $person)
		
		$maxAge:=80
		$minAge:=17
		
		$min:=Year of:C25(Current date:C33)-$maxAge
		$max:=Year of:C25(Current date:C33)-$minAge
		$year:=(Random:C100%($max-$min+1))+$min
		
		$month:=(Random:C100%(12))+1
		$day:=(Random:C100%(28))+1
		
		$s:=String:C10($year; "0000")+"-"+String:C10($month; "00")+"-"+String:C10($day; "00")+"T00:00:00"
		$date:=Date:C102($s)
		$person.birthDate:=$date
		
		$person.children:=(Random:C100%4)+1
		$person.gender:=Choose:C955($person.tempGender=True:C214; "Female"; "Male")
		$person.address:=$address
		$status:=$person.save()
	End for 
End for 

For ($i; 1; 338)
	$person:=ds:C1482.Persons.new()
	FakeData_FillObjectTemplate($template; $person)
	
	$maxAge:=80
	$minAge:=17
	
	$min:=Year of:C25(Current date:C33)-$maxAge
	$max:=Year of:C25(Current date:C33)-$minAge
	$year:=(Random:C100%($max-$min+1))+$min
	
	$month:=(Random:C100%(12))+1
	$day:=(Random:C100%(28))+1
	
	$s:=String:C10($year; "0000")+"-"+String:C10($month; "00")+"-"+String:C10($day; "00")+"T00:00:00"
	$date:=Date:C102($s)
	$person.birthDate:=$date
	$person.children:=(Random:C100%4)+1
	
	$person.gender:=Choose:C955($person.tempGender=True:C214; "Female"; "Male")
	
	$address:=ds:C1482.Address.new()
	FakeData_FillObjectTemplate($templateAddress; $address)
	If (Length:C16($address.zipCode)<=4)
		$address.zipCode:="0"+$address.zipCode
	End if 
	
	$status:=$address.save()
	
	$person.address:=$address
	$status:=$person.save()
End for 

FakeData_ArraysDeinit