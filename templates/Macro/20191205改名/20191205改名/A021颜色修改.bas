Attribute VB_Name = "A021"
Public Function ��ɫ�޸�(�Բ�, �˲�, colure1)

Dim part As Object
Dim swapp As Object
Dim boolstatus As Boolean
Dim longstatus As Long
Set swapp = GetObject(, "SldWorks.Application")
Set part = swapp.ActiveDoc
Set SelMgr = part.SelectionManager
Set swModel = swapp.ActiveDoc
swapp.Visible = True

strFilePathName = swModel.GetPathName '�ļ�����Ŀ¼+�ļ���+��չ��  û�е�ѡ
strFilePath = Left(strFilePathName, InStrRev(strFilePathName, "\") - 1) & "\" '�ļ�����Ŀ¼
strFileName = Mid(strFilePathName, InStrRev(strFilePathName, "\") + 1)
strFileName = Left(strFileName, InStrRev(strFileName, ".") - 1) '�ļ���
strFileType = UCase(Mid(strFilePathName, InStrRev(strFilePathName, ".") + 1))   '�ļ���չ������д

�˲�.List(0) = strFilePath
�˲�.List(1) = strFileName
�˲�.List(2) = strFileType

If (�˲�.List(2) = "SLDDRW") Then

�Բ�.List(0) = "����"

�Բ�.List(1) = "��ɫ�޸�ʧ�ܣ���ѡ�����"

Exit Function

End If

If (�˲�.List(2) = "SLDASM") Then

part.OpenCompFile

Set part = swapp.ActiveDoc

swapp.Visible = True

�˲�.List(3) = part.GetTitle

�˲�.List(4) = "��"

End If

If (�˲�.List(3) <> �˲�.List(1)) Then

Dim strd As String
strd = colure1.Text
Select Case strd

Case Is = "1"
 h1 = 255
 h2 = 128
 h3 = 128
Case Is = "2"
 h1 = 192
 h2 = 192
 h3 = 192
 Case Is = "3"
 h1 = 128
 h2 = 255
 h3 = 128
 Case Is = "4"
 h1 = 255
 h2 = 255
 h3 = 0
 Case Is = "5"
 h1 = 128
 h2 = 128
 h3 = 255
 Case Is = "6"
 h1 = 255
 h2 = 128
 h3 = 255
 Case Is = "7"
 h1 = 0
 h2 = 255
 h3 = 255
 Case Is = "8"
 h1 = 0
 h2 = 192
 h3 = 0
Case Is = "9"
 h1 = 250
 h2 = 0
 h3 = 0
End Select

r = Val(h1)
g = Val(h2)
b = Val(h3)
Set swapp = GetObject(, "SldWorks.Application")
Set swComp = swapp.ActiveDoc
vMatProp = swComp.MaterialPropertyValues
vMatProp(0) = r / 255 '��
vMatProp(1) = g / 255 '��
vMatProp(2) = b / 255 '��
swComp.MaterialPropertyValues = vMatProp
swComp.EditRebuild
swComp.GraphicsRedraw2
If (colure1.Text < 9) Then
colure1.Text = colure1.Text + 1
Else
colure1.Text = 1
End If

�Բ�.List(0) = "��ȷ"

�Բ�.List(1) = "��ɫ�޸����"

Call �����ļ�

If (�˲�.List(4) = "��") Then

Call �ر��ļ�(�˲�)

End If

Else

�Բ�.List(0) = "����"

�Բ�.List(1) = "��ɫ�޸�ʧ�ܣ���ѡ�����"

End If

End Function

