Set WshNetwork = CreateObject("WScript.Network")
NomeUsuario = WshNetwork.UserName
MsgBox "Voc� s� tem uma chance... " & NomeUsuario, 64, ""