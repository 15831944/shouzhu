Attribute VB_Name = "A002"
Public Function ��ʾģ��(�Բ�, ��ʾ����, ��Ŀ���)

��ʾ����.Text = �Բ�.List(1)

��Ŀ���.Text = �Բ�.List(2)

If (�Բ�.List(0) = "��ȷ") Then

��ʾ����.BackColor = vbGreen

��ʾ����.ForeColor = vbBlue

Else

��ʾ����.BackColor = vbYellow

��ʾ����.ForeColor = vbRed
End If


End Function


