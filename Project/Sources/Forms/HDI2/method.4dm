C_OBJECT:C1216($type)

Case of 
		
	: (Form event code:C388=On Load:K2:1)
		
		ARRAY TEXT:C222(_TabTitles;0)
		ARRAY TEXT:C222(_Descriptions;0)
		
		Form:C1466.message:="Hello World"
		
		  //Creates a new object encapsulating an encryption key pair.
		$type:=New object:C1471("type";"RSA")
		Form:C1466.key:=4D:C1709.CryptoKey.new($type)
		
		  //Returns private key in PEM format, or an empty string if none is available.
		Form:C1466.publicKey:=Form:C1466.key.getPublicKey()
		
		  //Returns private key in PEM format, or an empty string if none is available.
		Form:C1466.privateKey:=Form:C1466.key.getPrivateKey()
		
		
		READ ONLY:C145([INFO:1])
		ALL RECORDS:C47([INFO:1])
		ORDER BY:C49([INFO:1];[INFO:1]PageNumber:4;>)
		
		SELECTION TO ARRAY:C260([INFO:1]TabTitle:3;_TabTitles;[INFO:1]Description:2;_Descriptions)
		
End case 

Form:C1466.trace:=False:C215