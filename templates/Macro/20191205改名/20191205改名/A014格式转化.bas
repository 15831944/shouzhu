Attribute VB_Name = "A014"
Public Function DWG��PDF����(����DWG�ĵ�λ��, ��ʾ����, �Բ�, ����, �˲�)

Dim swapp As Object
Dim part As Object
Dim Filename As String
Set swapp = GetObject(, "SldWorks.Application")
Set part = swapp.ActiveDoc
Set swModel = swapp.ActiveDoc
swapp.Visible = True

If (����.Value = 1) Then

�����ĵ�ȫ�� = ����DWG�ĵ�λ��.Text & "\" & �˲�.List(2)

Else

�����ĵ�ȫ�� = �˲�.List(1) & �˲�.List(2)
        
End If

Filename1 = �����ĵ�ȫ��

If (�˲�.List(3) = "SLDDRW") Then

part.SaveAs2 Filename1 & ".DWG", 0, True, True
part.SaveAs2 Filename1 & ".PDF", 0, True, True

�Բ�.List(0) = "��ȷ"
�Բ�.List(1) = "PDF/DWG�������" & "  " & �˲�.List(2) & ".DWG"

Else

part.SaveAs2 Filename1 & ".Step", 0, True, True

�Բ�.List(0) = "��ȷ"
�Բ�.List(1) = "Step�������" & "  " & �˲�.List(2) & ".Step"

End If

End Function

Public Function Part����(����DWG�ĵ�λ��, ��ʾ����, �Բ�, ����, �˲�)

Dim swapp As Object
Dim part As Object
Dim Filename As String
Set swapp = GetObject(, "SldWorks.Application")
Set part = swapp.ActiveDoc
Set swModel = swapp.ActiveDoc
swapp.Visible = True

If (����.Value = 1) Then

�����ĵ�ȫ�� = ����DWG�ĵ�λ��.Text & "\" & �˲�.List(2)

Else

�����ĵ�ȫ�� = �˲�.List(1) & �˲�.List(2)
        
End If

Filename1 = �����ĵ�ȫ��

If (�˲�.List(3) = "SLDDRW") Then

�Բ�.List(0) = "����"
�Բ�.List(1) = "Part���������ѡ�������װ����"

Else

part.SaveAs2 Filename1 & ".SLDPRT", 0, True, True

�Բ�.List(0) = "��ȷ"

�Բ�.List(1) = "Part������" & "  " & �˲�.List(2) & ".SLDPRT"

End If

End Function

