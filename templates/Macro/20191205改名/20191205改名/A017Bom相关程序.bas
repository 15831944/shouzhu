Attribute VB_Name = "A017"
Public Function ����Bom(�˲�, ����, ����)

Dim xlApp As Excel.Application
Dim xlBook As Excel.Workbook
Dim xlSheet As Excel.Worksheet
Set xlApp = CreateObject("Excel.Application") '����EXCELӦ����
xlApp.Visible = True
Set xlBook = xlApp.Workbooks.Open("C:\sw2016\TEģ��SW2016 ��\ģ��\bom\�ӹ��� BOM��.XLS") '�򿪱�׼��
Set xlSheet = xlBook.Worksheets("�ӹ���")  '����һ��SHEET
xlSheet.Cells(6, 5) = " �豸���ƣ�" & �˲�.List(7)
xlSheet.Cells(6, 1) = "�������ڣ�" & �˲�.List(6) & "    ��Ŀ�����ˣ�" & "��ï��"
    
xlSheet.Cells(5, 1) = "�ӹ���  ����BOM������ţ�" & �˲�.List(4) & "��"
    
Set xlBook = xlApp.Workbooks("�ӹ��� BOM��.XLS")  '�򿪱�׼��

ww1 = Right(�˲�.List(6), Len(�˲�.List(6)) - InStrRev(�˲�.List(6), "/"))

ww2 = Left(�˲�.List(6), InStrRev(�˲�.List(6), "/") - 1)

ww3 = Right(ww2, Len(ww2) - InStrRev(ww2, "/"))

ww4 = Left(�˲�.List(6), 4)

If (ww1 < 10) Then

ww1 = "0" & ww1

End If

If (ww3 < 10) Then

ww3 = "0" & ww3

End If

aa = ww4 & ww3 & ww1
 
If (���� = 1) Then

BOM�����ļ�λ�� = �˲�.List(5) & "\" & aa & " " & �˲�.List(7) & ".XLS"

Else

BOM�����ļ�λ�� = �˲�.List(1) & aa & " " & �˲�.List(7) & ".XLS"

End If

xlBook.SaveCopyAs BOM�����ļ�λ��

Set xlBook = xlApp.Workbooks("�ӹ��� BOM��.XLS")

 ����.List(2) = BOM�����ļ�λ��

xlBook.Close False
Set xlBook = Nothing
xlApp.Quit
Set xlApp = Nothing

End Function

Public Function д����(ͬ��, ����)

Dim xlApp As Excel.Application
Dim xlBook As Excel.Workbook
Dim xlSheet As Excel.Worksheet

Set xlApp = CreateObject("Excel.Application") '����EXCELӦ����
xlApp.Visible = True
Set xlBook = xlApp.Workbooks.Open(����.List(2)) '�򿪱�׼��
 Set xlSheet = xlBook.Worksheets("�ӹ���")  '����һ��SHEET
       
For i3 = 0 To ͬ��.ListCount / 13
       
xlSheet.Cells(i3 + 8, 1) = i3 + 1
 
xlSheet.Cells(i3 + 8, 2) = ͬ��.List(i3 * 13 + 3)

xlSheet.Cells(i3 + 8, 3) = ͬ��.List(i3 * 13 + 2)

xlSheet.Cells(i3 + 8, 4) = ͬ��.List(i3 * 13 + 12)

xlSheet.Cells(i3 + 8, 5) = ͬ��.List(i3 * 13 + 4)

xlSheet.Cells(i3 + 8, 6) = ͬ��.List(i3 * 13 + 5)

xlSheet.Cells(i3 + 8, 7) = ͬ��.List(i3 * 13 + 12)

xlSheet.Cells(i3 + 8, 9) = ͬ��.List(i3 * 13 + 6)

xlSheet.Cells(i3 + 8, 11) = ͬ��.List(i3 * 13 + 1)

xlSheet.Cells(i3 + 8, 16) = ͬ��.List(i3 * 13 + 7)

Next

  xlBook.Close (True)

Set xlBook = Nothing
xlApp.Quit
Set xlApp = Nothing

End Function


Public Function ����ͼ����(�˲�, ����, �ж�, ͬ��, File1, ����, �Բ�)

File1.Path = Left(�˲�.List(1), Len(�˲�.List(1)) - 1)

File1.Pattern = "*.SLDDRW" 'ƥ�� txt �ļ�

For i2 = 0 To File1.ListCount - 1

����.List(0) = i2

����.List(1) = File1.Path

����.List(2) = File1.List(i2)

Dim boolstatus As Boolean
Dim longstatus As Long, longwarnings As Long
Set swapp = GetObject(, "SldWorks.Application")
Set part = swapp.ActiveDoc
Set swModel2 = swapp.ActiveDoc
Set swModel = swapp.ActiveDoc
Set part = swapp.OpenDoc6(����.List(1) & "\" & ����.List(2), 3, 0, "", longstatus, longwarnings)

Call ģ�����Զ�ȡ(�ж�, ����)

mm = i2 * 13

For i1 = 0 To 13

ͬ��.List(i1 + mm) = �ж�.List(i1)

Next

Call DWG��PDF����(����, �˲�, ����)

Call �ر��ļ�(�˲�)

Next

�Բ�.List(0) = "��ȷ"
�Բ�.List(1) = "PDF/DWG�Լ�BOM������ɣ�����" & i2 & "������ͼ"

End Function

Public Function ģ�����Զ�ȡ(�ж�, ����)

Dim vCustInfoName2_temp As String
Dim vCustInfoName_temp As String
Dim a() As String
Dim part As Object
Dim swapp As Object
Dim m As Integer

Dim boolstatus As Boolean
Dim longstatus As Long, longwarnings As Long
Set swapp = GetObject(, "SldWorks.Application")
Set part = swapp.ActiveDoc
Set swModel2 = swapp.ActiveDoc
Set swModel = swapp.ActiveDoc
Set part = swapp.OpenDoc6(����.List(1) & "\" & ����.List(2), 3, 0, "", longstatus, longwarnings)


vCustInfoNameArr = swModel2.GetCustomInfoNames2(vConfigName)

vCustInfoNameArr2 = swModel2.GetCustomInfoNames

If Not IsEmpty(vCustInfoNameArr2) Then 'ȡ���Զ������Ա����������

For Each vCustInfoName2 In vCustInfoNameArr2

vCustInfoName2_temp = CStr(vCustInfoName2)

vCustInfoName_temp_value2 = swModel2.CustomInfo(vCustInfoName2)

ReDim Preserve a(1, m)

a(0, m) = Trim(vCustInfoName2_temp)

a(1, m) = Trim(vCustInfoName_temp_value2)

m = m + 1

'��������.Text = vCustInfoName2_temp

'����ֵ.Text = vCustInfoName_temp_value2

�ж�.List(m - 1) = vCustInfoName_temp_value2

ReDim Preserve a(1, m)
Next
End If

End Function

Public Function DWG��PDF����(����, �˲�, ����)

Dim swapp As Object
Dim part As Object
Dim Filename As String
Set swapp = GetObject(, "SldWorks.Application")
Set part = swapp.ActiveDoc
Set swModel = swapp.ActiveDoc
swapp.Visible = True

If (���� = 1) Then

BOM�����ļ�λ�� = �˲�.List(5) & "\"
Else

BOM�����ļ�λ�� = �˲�.List(1)

End If

mm1 = Left(����.List(2), InStrRev(����.List(2), ".") - 1)

mm2 = UCase(Right(����.List(2), Len(����.List(2)) - InStrRev(����.List(2), ".")))

Filename1 = BOM�����ļ�λ�� & mm1

If (mm2 = "SLDDRW") Then

part.SaveAs2 Filename1 & ".DWG", 0, True, True
part.SaveAs2 Filename1 & ".PDF", 0, True, True

End If

End Function


