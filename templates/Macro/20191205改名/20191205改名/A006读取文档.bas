Attribute VB_Name = "A006"
Public Function ��ȡ������Ϣ(�Բ�, �˲�, ����, ����DWG�ĵ�λ��, ��ǰ����, ��̨����)

On Error Resume Next
Dim part As Object
Dim swapp As Object

Set swapp = GetObject(, "SldWorks.Application")

Set swModel = swapp.ActiveDoc

Set swSelMgr = swModel.SelectionManager '����ѡ�������

ks = swSelMgr.GetSelectedObjectCount2(0) '��ȡ����ѡ�������Ŀ

If (ks = 0) Then

strFilePathName = swModel.GetPathName '�ļ�����Ŀ¼+�ļ���+��չ��  û�е�ѡ

�˲�.List(0) = "0"

Else

Set swComp = swSelMgr.GetSelectedObjectsComponent3(1, 0) '��ȡ����ѡ�����

strFilePathName = swComp.GetPathName '�ļ�����Ŀ¼+�ļ���+��չ��  ��ѡ���

If (strFilePathName = "") Then

strFilePathName = swModel.GetPathName '�ļ�����Ŀ¼+�ļ���+��չ��  ��ѡ��û�ö�������

End If

�˲�.List(0) = "1"

End If

strFilePath = Left(strFilePathName, InStrRev(strFilePathName, "\") - 1) & "\" '�ļ�����Ŀ¼
strFileName = Mid(strFilePathName, InStrRev(strFilePathName, "\") + 1)
strFileName = Left(strFileName, InStrRev(strFileName, ".") - 1) '�ļ���
strFileType = UCase(Mid(strFilePathName, InStrRev(strFilePathName, ".") + 1))   '�ļ���չ������д

mm = Left(strFileName, InStrRev(strFileName, "-") - 1)

�˲�.List(1) = strFilePath

�˲�.List(2) = strFileName

�˲�.List(3) = strFileType

�˲�.List(4) = mm

�˲�.List(5) = ����DWG�ĵ�λ��

�˲�.List(6) = ��ǰ����

�˲�.List(7) = ��̨����

����.List(7) = �˲�.List(1)

����.List(8) = �˲�.List(3)

�Բ�.List(0) = "��ȷ"

�Բ�.List(1) = "��ȡ���" & "   " & �˲�.List(2) & " ." & �˲�.List(3)

�Բ�.List(2) = �˲�.List(2)

����.List(4) = �˲�.List(1)

End Function

