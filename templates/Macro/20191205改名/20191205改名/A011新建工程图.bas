Attribute VB_Name = "A011"
Public Function �½�����ͼ(ͬ��, �˲�, �Բ�, ����ͼģ��λ��)

Dim swapp As Object
Dim part As Object
Dim longstatus As Long, longwarnings As Long
Set swapp = GetObject(, "SldWorks.Application")
Set part = swapp.ActiveDoc
Set swModel = swapp.ActiveDoc
swapp.Visible = True

strFilePathName = swModel.GetPathName '�ļ�����Ŀ¼+�ļ���+��չ��  û�е�ѡ
strFilePath = Left(strFilePathName, InStrRev(strFilePathName, "\") - 1) & "\" '�ļ�����Ŀ¼
strFileName = Mid(strFilePathName, InStrRev(strFilePathName, "\") + 1)
strFileName = Left(strFileName, InStrRev(strFileName, ".") - 1) '�ļ���
strFileType = UCase(Mid(strFilePathName, InStrRev(strFilePathName, ".") + 1))   '�ļ���չ������д
WW1 = Left(strFilePathName, Len(strFilePathName) - 6) & "SLDDRW"

�˲�.List(9) = ����ͼģ��λ��.Text

If (�˲�.List(9) = "") Then

�Բ�.List(0) = "����"

�Բ�.List(1) = "δ�ҵ�����ͼģ��λ��"

�Բ�.List(3) = 1

Exit Function

Else

�Բ�.List(3) = 0

If (Dir(WW1) = "") Then

ww3 = Right(�˲�.List(9), Len(�˲�.List(9)) - InStrRev(�˲�.List(9), "\"))

Set part = swapp.OpenDoc6(�˲�.List(9), 3, 0, "", longstatus, longwarnings)

boolstatus = part.Create3rdAngleViews(strFilePathName)

longstatus = part.SaveAs3(WW1, 0, 2)

swapp.CloseDoc ww3 & " - V"

�˲�.List(10) = "�½�"

End If

Set part = swapp.OpenDoc6(WW1, 3, 0, "", longstatus, longwarnings)

End If

End Function

