Attribute VB_Name = "A005"
Public Function �ữ��ԭ(�Բ�)

On Error Resume Next
Dim swModel As Object
Set swapp = GetObject(, "SldWorks.Application")
Set swModel = swapp.ActiveDoc

strFilePathName = swModel.GetPathName
strFilePath = Left(strFilePathName, InStrRev(strFilePathName, "\") - 1) & "\" '�ļ�����Ŀ¼

strFileName = Mid(strFilePathName, InStrRev(strFilePathName, "\") + 1)

strFileName = Left(strFileName, InStrRev(strFileName, ".") - 1) '�ļ���

strFileType = UCase(Mid(strFilePathName, InStrRev(strFilePathName, ".") + 1))   '�ļ���չ������д

If (StrComp(strFileType, "SLDASM") = 0) Then

value_temp = swModel.ResolveAllLightWeightComponents(False) '�ữȡ������ԭ״̬

�Բ�.List(0) = "��ȷ"
�Բ�.List(1) = strFileName & "  " & "�ữ��ԭ���"
�Բ�.List(2) = strFileName

Else

�Բ�.List(0) = "����"
�Բ�.List(1) = strFileName & "  " & "�ữ��ԭʧ��"
�Բ�.List(2) = ""

End If

Set swpart = Nothing
Set swModel = Nothing
Set swapp = Nothing

End Function
