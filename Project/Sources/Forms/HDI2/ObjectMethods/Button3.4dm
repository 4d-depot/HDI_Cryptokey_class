C_OBJECT:C1216($type;$key)
If (Form:C1466.trace)
	TRACE:C157
End if 

/*
"RSA": generates an RSA key pair, using settings.size as size.
"ECDSA": generates an Elliptic Curve Digital Signature Algorithm key pair, using settings.curve as curve. 
Note that ECDSA keys cannot be used for encryption but only for signature.
"PEM": loads a key pair definition in PEM format, using settings.pem.
*/
$type:=New object:C1471("type";"RSA")
$key:=4D:C1709.CryptoKey.new($type)

If (Form:C1466.key#Null:C1517)
	Form:C1466.publicKey:=$key.getPublicKey()
	Form:C1466.privateKey:=$key.getPrivateKey()
Else 
	Form:C1466.publicKey:=""
	Form:C1466.privateKey:=""
End if 
