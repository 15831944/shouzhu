Attribute VB_Name = "A008"
Function ����(�˲�, �Բ�, ͬ��, ����, �ж�, ��Ŀ���, ����ѡ��) '

Dim part As Object
Dim swapp As Object
Set swapp = GetObject(, "SldWorks.Application")
Set part = swapp.ActiveDoc
Set swModel = swapp.ActiveDoc

'�ֶ��޸����

If (�Բ�.List(1) = "δѡ����Ҫ�������������") Then
     Exit Function
End If

If (����.List(0) = "��װ����") Then

  Call �ֶ��޸�����(��Ŀ���, ����, �Բ�)

Else

'�Զ��޸����

If (����ѡ��.Text = "װ��1") = True Then

Call װ����1����(ͬ��, �Բ�, �ж�, �˲�, ����)

End If

If (����ѡ��.Text = "װ��2") = True Then

Call װ����2����(ͬ��, �Բ�, �ж�, �˲�, ����)

End If

If (����ѡ��.Text = "�ӹ�") = True Then

Call ���������(ͬ��, �Բ�, �ж�, ����)

End If

If (����ѡ��.Text = "���") = True Then

Call �������(��Ŀ���, ����, �Բ�, ��ȡ)

End If

If (����ѡ��.Text = "����") = True Then

Call ����������(ͬ��, �Բ�, ����, �ж�)

End If

End If

End Function

Function �ֶ��޸�����(��Ŀ���, ����, �Բ�)

Dim part As Object
Dim swapp As Object
Set swapp = GetObject(, "SldWorks.Application")
Set part = swapp.ActiveDoc
Set swModel = swapp.ActiveDoc

   L1 = ��Ŀ���.Text

    mm5 = ����.List(7) & L1 & "." & ����.List(8)

       If Dir(mm5) <> "" Then '�ж��ļ������Ƿ�����ļ�

         ee4 = ee4 + 1

         �Բ�.List(0) = "����"

         �Բ�.List(1) = "����ʧ�ܣ���ͬ���ļ�"

         Exit Function
            
        End If

      longstatus = part.Extension.RenameDocument(L1)

      �Բ�.List(0) = "��ȷ"

      �Բ�.List(1) = "�ֹ��޸��������" & "  " & L1

      �Բ�.List(2) = L1

End Function

Public Function ���������(ͬ��, �Բ�, �ж�, ����)

Dim part As Object
Dim swapp As Object
Set swapp = GetObject(, "SldWorks.Application")
Set part = swapp.ActiveDoc
Set swModel = swapp.ActiveDoc

wq1 = �ж�.ListCount

'��������޸�
ee4 = 0

If (wq1 = 1) Then

For qq = 0 To 100

ee2 = ee4 + 1

If (ee2 < 10) Then

ee5 = "0" & ee2

Else

ee5 = ee4 + 1

End If

L1 = ����.List(2) & "-" & ����.List(3) & ee5

mm5 = ����.List(4) & L1 & "." & ����.List(5)

If Dir(mm5) <> "" Then '�ж��ļ������Ƿ�����ļ�

ee4 = ee4 + 1

�Բ�.List(0) = "����"

�Բ�.List(1) = "����ʧ�ܣ���ͬ���ļ�"

Else

Exit For

End If

Next

longstatus = part.Extension.RenameDocument(L1)

�Բ�.List(0) = "��ȷ"

�Բ�.List(1) = "����޸����" & "  " & L1

Else

'�����޸����
For ee1 = 0 To �ж�.ListCount - 1

qee1 = ͬ��.List(ee1)

qee2 = ����.List(1)

boolstatus = part.Extension.SelectByID2(qee1 & "@" & qee2, "COMPONENT", 0, 0, 0, False, 0, Nothing, 0)

ee2 = ee1 + 1

If (ee2 < 10) Then

ee3 = "0" & ee2

Else

ee3 = ee1 + 1

End If

L1 = ����.List(2) & "-" & ����.List(3) & ee3

mm5 = ����.List(4) & L1 & "." & ����.List(5)

If Dir(mm5) <> "" Then '�ж��ļ������Ƿ�����ļ�

�Բ�.List(0) = "����"

�Բ�.List(1) = "����ʧ�ܣ���ͬ���ļ�"
                 
Else

longstatus = part.Extension.RenameDocument(L1)

�Բ�.List(0) = "��ȷ"

�Բ�.List(1) = "����޸����" & "  " & ee2 & "  �����"

End If

Next

End If


End Function

Public Function װ����1����(ͬ��, �Բ�, �ж�, �˲�, ����)

Dim part As Object
Dim swapp As Object
Set swapp = GetObject(, "SldWorks.Application")
Set part = swapp.ActiveDoc
Set swModel = swapp.ActiveDoc

For ee1 = 0 To �ж�.ListCount - 1
mm1 = �˲�.List(ee1)
mm1 = UCase(mm1)
If (mm1 = "SLDPRT") Then
�Բ�.List(0) = "����"
�Բ�.List(1) = "ѡ���а������,�����޸�Ϊ��װ����1����"
Exit Function
End If
Next

wq1 = �ж�.ListCount

'��������޸�
ee4 = 0

If (wq1 = 1) Then

For qq = 0 To 100

ee2 = ee4 + 1

If (ee2 < 10) Then

ee5 = "0" & ee2

Else

ee5 = ee4 + 1

End If

L1 = ����.List(2) & "-" & ee5 & "000"

mm5 = ����.List(4) & L1 & "." & ����.List(5)

If Dir(mm5) <> "" Then '�ж��ļ������Ƿ�����ļ�

ee4 = ee4 + 1

�Բ�.List(0) = "����"

�Բ�.List(1) = "����ʧ�ܣ���ͬ���ļ�"

Else

Exit For

End If

Next

longstatus = part.Extension.RenameDocument(L1)

�Բ�.List(0) = "��ȷ"

�Բ�.List(1) = "װ����1�������" & "  " & L1

Else

'�����޸����
For ee1 = 0 To �ж�.ListCount - 1

qee1 = ͬ��.List(ee1)

qee2 = ����.List(1)

boolstatus = part.Extension.SelectByID2(qee1 & "@" & qee2, "COMPONENT", 0, 0, 0, False, 0, Nothing, 0)

ee2 = ee1 + 1

If (ee2 < 10) Then

ee3 = "0" & ee2

Else

ee3 = ee1 + 1

End If

L1 = ����.List(2) & "-" & ee3 & "000"

mm5 = ����.List(4) & L1 & "." & ����.List(5)

If Dir(mm5) <> "" Then '�ж��ļ������Ƿ�����ļ�

�Բ�.List(0) = "����"

�Բ�.List(1) = "����ʧ�ܣ���ͬ���ļ�"
                 
Else

longstatus = part.Extension.RenameDocument(L1)

�Բ�.List(0) = "��ȷ"

�Բ�.List(1) = "װ����1�������" & "  " & ee2 & "  �����"

End If

Next

End If

End Function


Public Function װ����2����(ͬ��, �Բ�, �ж�, �˲�, ����)

Dim part As Object
Dim swapp As Object
Set swapp = GetObject(, "SldWorks.Application")
Set part = swapp.ActiveDoc
Set swModel = swapp.ActiveDoc


MM22 = �ж�.ListCount
If (MM22 > 9) Then
�Բ�.List(0) = "����"
�Բ�.List(1) = "װ����2��ѡ�������ܶ���9��"
Exit Function
End If

For ee1 = 0 To �ж�.ListCount - 1
mm1 = �˲�.List(ee1)
mm1 = UCase(mm1)
If (mm1 = "SLDPRT") Then
�Բ�.List(0) = "����"
�Բ�.List(1) = "ѡ���а������,�����޸�Ϊ��װ����2����"
Exit Function
End If
Next

wq1 = �ж�.ListCount

'��������޸�
ee4 = 0

If (wq1 = 1) Then

For qq = 0 To 10

ee2 = ee4 + 1

L1 = ����.List(2) & "-" & ����.List(6) & ee2 & "00"

mm5 = ����.List(4) & L1 & "." & ����.List(5)

If Dir(mm5) <> "" Then '�ж��ļ������Ƿ�����ļ�

ee4 = ee4 + 1

�Բ�.List(0) = "����"

�Բ�.List(1) = "����ʧ�ܣ���ͬ���ļ�"

Else

Exit For

End If

Next

longstatus = part.Extension.RenameDocument(L1)

�Բ�.List(0) = "��ȷ"

�Բ�.List(1) = "װ����2�������" & "  " & L1

Else

'�����޸����
For ee1 = 0 To �ж�.ListCount - 1

qee1 = ͬ��.List(ee1)

qee2 = ����.List(1)

boolstatus = part.Extension.SelectByID2(qee1 & "@" & qee2, "COMPONENT", 0, 0, 0, False, 0, Nothing, 0)

ee2 = ee1 + 1

L1 = ����.List(2) & "-" & ����.List(6) & ee2 & "00"

mm5 = ����.List(4) & L1 & "." & ����.List(5)

If Dir(mm5) <> "" Then '�ж��ļ������Ƿ�����ļ�

�Բ�.List(0) = "����"

�Բ�.List(1) = "����ʧ�ܣ���ͬ���ļ�"
                 
Else

longstatus = part.Extension.RenameDocument(L1)

�Բ�.List(0) = "��ȷ"

�Բ�.List(1) = "װ����2�������" & "  " & ee2 & "  �����"

End If

Next

End If

End Function

Public Function ����������(ͬ��, �Բ�, ����, �ж�)

Dim part As Object
Dim swapp As Object
Dim aa001 As String
Set swapp = GetObject(, "SldWorks.Application")
Set part = swapp.ActiveDoc
Set swModel = swapp.ActiveDoc

For ee1 = 0 To �ж�.ListCount - 1

mm = Now
mm = Replace(mm, "/", "")
mm = Replace(mm, ":", "")
mm = Replace(mm, " ", "")
mm = Replace(mm, " ", "") & ee1

qee1 = ͬ��.List(ee1)

qee2 = ����.List(1)

boolstatus = part.Extension.SelectByID2(qee1 & "@" & qee2, "COMPONENT", 0, 0, 0, False, 0, Nothing, 0)

L1 = ����.List(1) & "-" & "����" & mm

longstatus = part.Extension.RenameDocument(L1)

�Բ�.List(0) = "��ȷ"

�Բ�.List(1) = "�����������" & "  " & ee1 + 1 & "  �����"

Next
End Function



Public Function �������(��Ŀ���, ����, �Բ�, ��ȡ)


Dim part As Object
Dim swapp As Object
Set swapp = GetObject(, "SldWorks.Application")
Set part = swapp.ActiveDoc
Set swModel = swapp.ActiveDoc

   L1 = ��Ŀ���.Text
   
    mm5 = ����.List(4) & L1 & "." & ����.List(5)

       If Dir(mm5) <> "" Then '�ж��ļ������Ƿ�����ļ�

         �Բ�.List(0) = "����"

         �Բ�.List(1) = "����ʧ�ܣ���ͬ���ļ�"

         Exit Function
            
        End If

      longstatus = part.Extension.RenameDocument(L1)

      �Բ�.List(0) = "��ȷ"

      �Բ�.List(1) = "��װ�����ֹ��޸��������" & "  " & L1

      �Բ�.List(2) = L1




End Function






