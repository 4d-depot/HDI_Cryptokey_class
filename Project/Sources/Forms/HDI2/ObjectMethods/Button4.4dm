C_OBJECT:C1216($type;$status)

If (Form:C1466.trace)
	TRACE:C157
End if 

  //Signs the utf8 representation of a message string using the object keys and provided options, and returns its signature in base64 format.
$type:=New object:C1471("type";"RSA";"encoding";"Base64URL")
Form:C1466.signature:=Form:C1466.key.sign(Form:C1466.message;$type)