//%attributes = {"invisible":true}


var $n; $i : Integer


If (Is Windows:C1573)
	$n:=Size of array:C274(_Descriptions)
	For ($i; 1; $n)
		ST SET ATTRIBUTES:C1093(_Descriptions{$i}; ST Start text:K78:15; ST End text:K78:16; Attribute text size:K65:6; 13)
	End for 
	
	$n:=Size of array:C274(_TabLineCode)
	For ($i; 1; $n)
		ST SET ATTRIBUTES:C1093(_TabLineCode{$i}; ST Start text:K78:15; ST End text:K78:16; Attribute text size:K65:6; 11; Attribute italic style:K65:2; 1)
	End for 
End if 

If (Is macOS:C1572)
	$n:=Size of array:C274(_Descriptions)
	For ($i; 1; $n)
		ST SET ATTRIBUTES:C1093(_Descriptions{$i}; ST Start text:K78:15; ST End text:K78:16; Attribute text size:K65:6; 14)
	End for 
	
	$n:=Size of array:C274(_TabLineCode)
	For ($i; 1; $n)
		ST SET ATTRIBUTES:C1093(_TabLineCode{$i}; ST Start text:K78:15; ST End text:K78:16; Attribute text size:K65:6; 13; Attribute italic style:K65:2; 1)
	End for 
End if 