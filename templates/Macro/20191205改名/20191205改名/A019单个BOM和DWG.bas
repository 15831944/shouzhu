Attribute VB_Name = "A019"
Function ��������ͼBom(����, �˲�, ����, �ж�, ͬ��, �Բ�)

Call ģ�����Զ�ȡ(�ж�, ����)

����.List(0) = ""

����.List(1) = �˲�.List(1)

����.List(2) = �˲�.List(2) & "." & �˲�.List(3)

Call DWG��PDF����(����, �˲�, ����)

For i = 0 To 13

ͬ��.List(i) = �ж�.List(i)

Next

If (�˲�.List(3) = "SLDDRW") Then

Call ����Bom(�˲�, ����, ����)
  
Call д����(ͬ��, ����)

�Բ�.List(0) = "��ȷ"
�Բ�.List(1) = "PDF/DWG�Լ�BOM�������"

Else

�Բ�.List(0) = "����"
�Բ�.List(1) = "PDF/DWG�Լ�BOM���ɴ�����ѡ�񹤳�ͼ"

End If

End Function

