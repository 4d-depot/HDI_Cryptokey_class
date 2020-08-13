C_OBJECT:C1216($status;$type)

If (Form:C1466.trace)
	TRACE:C157
End if 

$type:=New object:C1471("type";"RSA";"encoding";"Base64URL")

  //Verifies the base64 signature against the utf8 representation of message using the object keys and provided options. Returns true in status.success if the signature matches.
$status:=Form:C1466.key.verify(Form:C1466.message;Form:C1466.sentSignature;$type)
Form:C1466.verified:=Choose:C955($status.success;"Signature verified!";"Invalid signature")
OBJECT SET RGB COLORS:C628(*;"verified";Choose:C955($status.success;"green";"red"))


