Attribute VB_Name = "A010"
Public Function �������()

Dim swModel As Object
Dim swapp As Object
Set swapp = GetObject(, "SldWorks.Application")
Set swModel = swapp.ActiveDoc
'���ԭ������ֵ
 Set swModel = swapp.ActiveDoc
 Set cpm = swModel.Extension.CustomPropertyManager("")
 vCustInfoNameArr2 = swModel.GetCustomInfoNames
   If Not IsEmpty(vCustInfoNameArr2) Then
      For Each vCustInfoName2 In vCustInfoNameArr2
          bRet = swModel.DeleteCustomInfo(vCustInfoName2)
       Next
   End If
  
End Function

Function ��������(ͬ��, �Բ�)

Set swapp = GetObject(, "SldWorks.Application")
Set swModel = swapp.ActiveDoc
'swCustomInfoText = "30"

    swModel.DeleteCustomInfo2 "", "��Ŀ����"
    swModel.DeleteCustomInfo2 "", "��Ŀ���"
    swModel.DeleteCustomInfo2 "", "ͼ�Ż��ͺ�"
    swModel.DeleteCustomInfo2 "", "Ʒ��"
    swModel.DeleteCustomInfo2 "", "���"
    swModel.DeleteCustomInfo2 "", "���"
    swModel.DeleteCustomInfo2 "", "��׼"
    swModel.DeleteCustomInfo2 "", "REV"
    swModel.DeleteCustomInfo2 "", "����"
    swModel.DeleteCustomInfo2 "", "Ʒ�ƻ���Ҫ��"
    swModel.DeleteCustomInfo2 "", "ģ����"
    swModel.DeleteCustomInfo2 "", "Date"
    swModel.DeleteCustomInfo2 "", "��ע"
    swModel.DeleteCustomInfo2 "", "�ӹ�������"
    '��ֵ������
    swModel.AddCustomInfo3 "", "��Ŀ����", swCustomInfoText, ͬ��.List(0)
    swModel.AddCustomInfo3 "", "��Ŀ���", swCustomInfoText, ͬ��.List(1)
    swModel.AddCustomInfo3 "", "ͼ�Ż��ͺ�", swCustomInfoText, ͬ��.List(2)
    swModel.AddCustomInfo3 "", "Ʒ��", swCustomInfoText, ͬ��.List(3)
    swModel.AddCustomInfo3 "", "����", swCustomInfoText, ͬ��.List(4)
    swModel.AddCustomInfo3 "", "Ʒ�ƻ���Ҫ��", swCustomInfoText, ͬ��.List(5)
    swModel.AddCustomInfo3 "", "ģ����", swCustomInfoText, ͬ��.List(6)
    swModel.AddCustomInfo3 "", "��ע", swCustomInfoText, ͬ��.List(7)
    swModel.AddCustomInfo3 "", "���", swCustomInfoText, ͬ��.List(8)
    swModel.AddCustomInfo3 "", "���", swCustomInfoText, ͬ��.List(9)
    swModel.AddCustomInfo3 "", "��׼", swCustomInfoText, ͬ��.List(10)
    swModel.AddCustomInfo3 "", "Date", swCustomInfoText, ͬ��.List(11)
    swModel.AddCustomInfo3 "", "�ӹ�������", swCustomInfoText, ͬ��.List(12)
  oldDate = swModel.CustomInfo2("", "Date1")
  
  
�Բ�.List(0) = "��ȷ"

�Բ�.List(1) = ͬ��.List(2) & "  ����" & ͬ��.List(12) & "��  " & ͬ��.List(4) & "   " & ͬ��.List(5)
       
�Բ�.List(2) = ͬ��.List(2)

End Function


