Attribute VB_Name = "A018"
Function �½��ĵ�(����DWG�ĵ�λ��, �Բ�, ����, �˲�)

On Error Resume Next

If (���� = 1) Then

cc1 = ����DWG�ĵ�λ��.Text

cc2 = Right(cc1, Len(cc1) - InStrRev(cc1, "\"))

If (cc2 = "��������ͼ") Then

cc3 = ����DWG�ĵ�λ��.Text

Else

cc3 = ����DWG�ĵ�λ��.Text & "\" & "��������ͼ"

End If

MkDir (cc3) '������Ŀ�ļ���

End If

�˲�.List(5) = cc3
End Function
