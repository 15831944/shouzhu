Attribute VB_Name = "A007"
Dim ��װ������, ��Ŀ���, װ������1, װ������2, strFilePath, strFileType As String
Dim d As String
Dim a As String
Dim swModel As SldWorks.ModelDoc2
Dim swSelMgr As SldWorks.SelectionMgr
Dim swComp As SldWorks.Component2
Dim arr As String
Dim boolstatus As Boolean
Dim longstatus As Long
Dim myMate As Object
Dim i As Long
Dim ks As Long
Dim Str(100) As String
Dim Strm(100) As String

Function ��ѡ����ͳ��(�˲�, ͬ��, �ж�, �Բ�, ����)

On Error Resume Next
Set swapp = GetObject(, "SldWorks.Application")
Set swModel = swapp.ActiveDoc
Set swSelMgr = swModel.SelectionManager '����ѡ�������
 
��װ������ = swapp.ActiveDoc.GetTitle() '��ȡװ��������

��Ŀ��� = Left(��װ������, InStrRev(��װ������, "-") - 1) '��Ŀ���

װ������ = Left(Right(��װ������, Len(��װ������) - InStrRev(��װ������, "-")), 3)

װ������1 = Left(Right(��װ������, Len(��װ������) - InStrRev(��װ������, "-")), 2)

ks = swSelMgr.GetSelectedObjectCount2(0) '��ȡ����ѡ�������Ŀ

If (ks = 0) Then

�Բ�.List(0) = "����"

�Բ�.List(1) = "δѡ����Ҫ�������������"

Exit Function

Else

�Բ�.List(0) = "����"

�Բ�.List(1) = "����������"

End If

For i = 1 To ks '��ȡȫ������ѡ��������ƣ�ѭ����ʼ
Set swComp = swSelMgr.GetSelectedObjectsComponent3(i, 0) '��ȡ����ѡ�����

arr = swComp.Name2 '��ȡ����ѡ�������

strFilePathName = swComp.GetPathName '�ļ�����Ŀ¼+�ļ���+��չ��
strFilePath = Left(strFilePathName, InStrRev(strFilePathName, "\") - 1) & "\" '�ļ�����Ŀ¼
strFileName = Mid(strFilePathName, InStrRev(strFilePathName, "\") + 1)
strFileName = Left(strFileName, InStrRev(strFileName, ".") - 1) '�ļ���
strFileType = UCase(Mid(strFilePathName, InStrRev(strFilePathName, ".") + 1))   '�ļ���չ������д

If (strFilePathName = "") Then

�Բ�.List(0) = "����"

�Բ�.List(1) = "ѡ�����Ϊ��װ����"

����.List(0) = "��װ����"

Exit Function

End If

Str(i - 1) = arr

Strm(i - 1) = strFileType

�˲�.List(i - 1) = arr

ͬ��.List(i - 1) = Left(arr, InStrRev(arr, "-") - 1)

Next

Call �ж�λ����ͬ(�ж�, ͬ��)

Call �������������(�ж�, �˲�, ͬ��)

����.List(0) = ""

����.List(1) = ��װ������

����.List(2) = ��Ŀ���

����.List(3) = װ������

����.List(4) = strFilePath

����.List(5) = strFileType

����.List(6) = װ������1

�˲�.Clear

For i = 1 To ks

�˲�.List(i - 1) = Strm(i - 1)

Next

End Function

Function �ж�λ����ͬ(�ж�, ͬ��) '�ֿ���ѡ�е���ͬ�������

�ж�.List(0) = "��"

For mm1 = 1 To ks - 1

abc = ͬ��.List(mm1)

    For mm2 = 0 To mm1
      
      If (mm1 = mm2) Then
      
        ' �ж�.List(mm1) = "����"
      Else
        If abc = ͬ��.List(mm2) Then
 
          �ж�.List(mm1) = "��"
             
          GoTo 1
             
        Else
            
          �ж�.List(mm1) = "��"

        End If
             
      End If
        
     Next
1:

Next

End Function

Function �������������(�ж�, �˲�, ͬ��) 'ͳ����Ҫ�޸����������

ͬ��.Clear

For WW1 = 0 To �ж�.ListCount - 1

qwe1 = �ж�.List(WW1)

  If (qwe1 = "��") Then

     ͬ��.List(ww2) = �˲�.List(WW1)
     
     ww2 = ww2 + 1

  End If

Next

End Function
