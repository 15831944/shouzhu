Attribute VB_Name = "A013"
Public Function �����ļ�()
Dim swapp As Object
Dim part As Object
Dim Filename As String
Set swapp = GetObject(, "SldWorks.Application")
Set part = swapp.ActiveDoc
Set swModel = swapp.ActiveDoc
swapp.Visible = True

swModel.Save

End Function


Public Function �ر��ļ�(�˲�)

Dim part As Object
Dim swapp As Object
Set swapp = GetObject(, "SldWorks.Application")
Set part = swapp.ActiveDoc
Set swModel = swapp.ActiveDoc

Dim Title As String

Title = part.GetTitle

Set part = Nothing

If (�˲�.List(2) <> Title) Then

swapp.CloseDoc Title

End If

End Function

