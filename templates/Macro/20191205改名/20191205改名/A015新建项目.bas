Attribute VB_Name = "A015"
Public Function ��Ŀ�ļ�����(����DWG�ĵ�λ��, ��̨����, �Բ�)

On Error Resume Next

CC1 = ����DWG�ĵ�λ��.Text & "\"

rr1 = CC1 & ��̨����.Text

MkDir (rr1) '������Ŀ�ļ���

rr2 = CC1 & ��̨����.Text & "\" & "3D"
MkDir (rr2)

rr3 = CC1 & ��̨����.Text & "\" & "3D" & "\" & "3D"
MkDir (rr3)

rr4 = CC1 & ��̨����.Text & "\" & "3D" & "\" & "����"
MkDir (rr4)

rr5 = CC1 & ��̨����.Text & "\" & "3D" & "\" & "��׼��"
MkDir (rr5)

rr6 = CC1 & ��̨����.Text & "\" & "3D" & "\" & "�ӹ���"
MkDir (rr6)

rr7 = CC1 & ��̨����.Text & "\" & "3D" & "\" & "׷�ӷ���"
MkDir (rr7)

rr7 = CC1 & ��̨����.Text & "\" & "3D" & "\" & "�����ĵ�"
MkDir (rr7)

rr8 = CC1 & ��̨����.Text & "\" & "�����Լ�����"
MkDir (rr8)

rr9 = CC1 & ��̨����.Text & "\" & "�ο�ͼ��"
MkDir (rr9)

rr10 = CC1 & ��̨����.Text & "\" & "��Ʒͼ��"
MkDir (rr10)

rr11 = CC1 & ��̨����.Text & "\" & "�ƽ��ͻ�����"
MkDir (rr11)

rr12 = CC1 & ��̨����.Text & "\" & "�ͻ���Ʒ����"
MkDir (rr12)

rr13 = CC1 & ��̨����.Text & "\" & "��˻����¼"
MkDir (rr13)

rr14 = CC1 & ��̨����.Text & "\" & "������¼��"
MkDir (rr14)

rr15 = CC1 & ��̨����.Text & "\" & "��Ŀ�ƻ�"
MkDir (rr15)

rr16 = CC1 & ��̨����.Text & "\" & "��������"
MkDir (rr16)

rr17 = CC1 & ��̨����.Text & "\" & "CCD����"
MkDir (rr17)



FileCopy "C:\sw2016\TEģ��SW2016 ��\ģ��\��Ŀ����\190way��װ�豸����������.ppt", rr8 & "\" & ��̨����.Text & "�豸����������.ppt"

FileCopy "C:\sw2016\TEģ��SW2016 ��\ģ��\��Ŀ����\HVA630  �ֶ��ξ��������Ϸ���˵��.ppt", rr16 & "\" & ��̨����.Text & "�������Ϸ���˵��.ppt"

FileCopy "C:\sw2016\TEģ��SW2016 ��\ģ��\��Ŀ����\����������¼.xls", rr13 & "\" & ��̨����.Text & "����������¼.xls"

FileCopy "C:\sw2016\TEģ��SW2016 ��\ģ��\��Ŀ����\������¼��.xls", rr14 & "\" & ��̨����.Text & "������¼��.xls"

FileCopy "C:\sw2016\TEģ��SW2016 ��\ģ��\��Ŀ����\��Ŀ�ƻ���.xls", rr15 & "\" & ��̨����.Text & "��Ŀ�ƻ���.xls"

�Բ�.List(0) = "��ȷ"

�Բ�.List(1) = "����Ŀ�������" & "  " & ��̨����.Text
 
End Function
