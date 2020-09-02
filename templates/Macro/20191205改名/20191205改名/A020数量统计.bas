Attribute VB_Name = "A020"
Dim TopDocPathOnly     As String
Dim i As Integer
Dim PartsCollect()     As String '�����嵥�����У�
Dim InCollectCount     As Double '�����嵥����
Dim CustomInfoQTY      As String
Dim S1, S2                  As Integer
Dim Path_Name          As String
Dim Code_Name_C        As String
Dim Code_              As String
Dim Name_              As String
Dim swapp              As SldWorks.SldWorks
Dim swModelDoc         As SldWorks.ModelDoc2
Dim swConfig           As SldWorks.Configuration
Dim CustPropMgr        As SldWorks.CustomPropertyManager

Public Function ����ͳ��(�Բ�)

On Error Resume Next
Set swapp = GetObject(, "SldWorks.Application") 'SW����
Set TopDoc = swapp.ActiveDoc '��װ����
If TopDoc.GetType <> 2 Then
�Բ�.List(1) = "���ͳ��ʧ��"
�Բ�.List(0) = "����"
Exit Function
End If

TopDocPathSplit = Split(TopDoc.GetPathName, "\") '�ָ�
TopDocName = TopDocPathSplit(UBound(TopDocPathSplit)) '��װ�ļ�����
TopDocName = Left(TopDocName, Len(TopDocName) - 7) '��װ�ļ����ƣ��ų�.SLDASM��
TopDocPathOnly = Mid(TopDoc.GetPathName, 1, InStrRev(TopDoc.GetPathName, "\", -1)) '��װ������Ŀ¼
TopConfString = TopDoc.GetActiveConfiguration.Name '���b�������Q
CustomInfoQTY = "�������" '�ɰ�����ϲ���޸�Ԥ��ֵ
InCollectCount = 1 '�����嵥���Ȼ���
ReDim PartsCollect(InCollectCount) '������������
SubAsm TopDoc, TopConfString '����
Set swApo = GetObject(, "SldWorks.Application") '�ؽ�ģ��
Set part = swApo.ActiveDoc
 part.EditRebuild
 Set swModel = swApo.ActiveDoc '���浱ǰ�ļ�
swModel.Save
 Set swApo = GetObject(, "SldWorks.Application")
 
�Բ�.List(1) = "���ͳ�����"
�Բ�.List(0) = "��ȷ"
   
Set swpart = Nothing
Set swModel = Nothing
Set swapp = Nothing

End Function

 Function SubAsm(AsmDoc, ConfString) 'ͳ��װ������������
 On Error Resume Next
 
Set Configuration = AsmDoc.GetConfigurationByName(ConfString)
 Set RootComponent = Configuration.GetRootComponent
 Components = RootComponent.GetChildren
 For Each Child In Components
 Set ChildModel = Child.GetModelDoc
Dim swModel As Object
Set swapp = GetObject(, "SldWorks.Application")
Set swModel = swapp.ActiveDoc
If Not (ChildModel Is Nothing) Then '�ų����Ƽ��ữ
ChildConfString = Child.ReferencedConfiguration '�����������
ChildType = ChildModel.GetType
 ChildPathSplit = Split(Child.GetPathName, "\") '�ָ�
ChildName = ChildPathSplit(UBound(ChildPathSplit)) '����ļ�����
ChildPathOnly = Mid(Child.GetPathName, 1, InStrRev(Child.GetPathName, "\", -1)) '���������Ŀ¼
If ChildPathOnly = Replace(ChildPathOnly, TopDocPathOnly, "") Then SamePath = False Else SamePath = True '����Ƿ�����װĿ¼������Ŀ¼
If SamePath And (Not Child.ExcludeFromBOM) And (Not Child.IsEnvelope) Then '���^��������װĿ䛻�������Ŀ� �� �������ڲ����������� �� �Ǹ�����
If (Not Child.ExcludeFromBOM) And (Not Child.IsEnvelope) Then '�������������ڲ����������� �� ����
UNIT_OF_MEASURE = ChildModel.CustomInfo2(ChildConfString, UNIT_OF_MEASURE_Name) '������
If (UNIT_OF_MEASURE = 0) Or (UNIT_OF_MEASURE = "") Then UNIT_OF_MEASURE = 1 '����������
inCollect = False '�����жϱ���
For Each PartinCollect In PartsCollect '�ж��Ƿ����ڱ����嵥��
If ChildConfString & "@" & ChildName = PartinCollect Then inCollect = True
 Next
 If inCollect Then '���ڱ����嵥��
ht_Qty = ChildModel.CustomInfo2("", CustomInfoQTY) + 1 * UNIT_OF_MEASURE
 ChildModel.DeleteCustomInfo2 "", CustomInfoQTY
 ChildModel.AddCustomInfo3 "", CustomInfoQTY, 30, ht_Qty
 Else '���ڱ����嵥�ȣ��״δ���
ChildModel.DeleteCustomInfo2 "", CustomInfoQTY
 ChildModel.AddCustomInfo3 "", CustomInfoQTY, 30, UNIT_OF_MEASURE
InCollectCount = InCollectCount + 1 '�����嵥���Ȼ���+1
 ReDim Preserve PartsCollect(InCollectCount) '���¶�����������������Ⱥ����ݣ�
PartsCollect(InCollectCount - 1) = ChildConfString & "@" & ChildName '���뵽�����嵥��
End If
 If ChildType = 2 Then
 SubAsm ChildModel, ChildConfString '�����װ�������±���
End If
 End If
 End If
 End If
Next
 End Function
