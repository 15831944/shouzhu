Attribute VB_Name = "A009"
Function ����ֵ��ѡ(����, ����ʽ, �������, ����1, ����2, ͬ��, ��̨����, ��Ŀ���, ���, ���, ��׼, ��ǰ����, �ӹ�������)

Dim part As Object
Dim swapp As Object
Dim longstatus As Long, longwarnings As Long
Set swapp = GetObject(, "SldWorks.Application")
Set swModel = swapp.ActiveDoc
strFilePathName = swModel.GetPathName '�ļ�����Ŀ¼+�ļ���+��չ��  û�е�ѡ
strFilePath = Left(strFilePathName, InStrRev(strFilePathName, "\") - 1) & "\" '�ļ�����Ŀ¼
strFileName = Mid(strFilePathName, InStrRev(strFilePathName, "\") + 1)
strFileName = Left(strFileName, InStrRev(strFileName, ".") - 1) '�ļ���
strFileType = UCase(Mid(strFilePathName, InStrRev(strFilePathName, ".") + 1))   '�ļ���չ������д
qq1 = Left(strFileName, InStrRev(strFileName, "-") - 1) '��Ŀ���
qq2 = Right(strFileName, Len(strFileName) - Len(qq1) - 1)
qq3 = Left(qq2, 3) & "00" 'ģ����

If (����2 = "1") Then

���� = ����
����ʽ = ����ʽ
������� = �������
��ע = �������

Else

WW1 = ����1 & ����
Dim strlms As String
strlms = WW1
Select Case strlms
Case Is = "0S45C"
����ʽ.Text = "NI"
Case Is = "0SKD11"
����ʽ.Text = "HRC58~62��NI"
Case Is = "0A6061"
����ʽ.Text = "��ɰ����ɫ����"
Case Is = "0SUS304"
����ʽ.Text = "--"
Case Is = "0SPCC"
����ʽ.Text = "����RAL7035"
Case Is = "0POM"
����ʽ.Text = "��ɫ"
Case Is = "0PC"
����ʽ.Text = "͸��"
Case Is = "0SUJ2"
����ʽ.Text = "HRC58~62��NI"
Case Is = "0ASP23"
����ʽ.Text = "HRC64~66"
Case Is = "0������"
����ʽ.Text = "--"
Case Is = "0�ǿ���"
����ʽ.Text = "͸��"
Case Is = "0--"
����ʽ.Text = "--"
'�ڶ���ѡ��
Case Is = "1S45C"
����ʽ.Text = "Hard Cr"
Case Is = "1SKD11"
����ʽ.Text = "HRC58~62��Hard Cr"
Case Is = "1A6061"
����ʽ.Text = "Ӳ������"
Case Is = "1SUS304"
����ʽ.Text = "--"
Case Is = "1SPCC"
����ʽ.Text = "��ɫ����"
Case Is = "1POM"
����ʽ.Text = "��ɫ"
Case Is = "1PC"
����ʽ.Text = "͸��"
Case Is = "1SUJ2"
����ʽ.Text = "HRC58~62��Hard Cr"
Case Is = "1ASP23"
����ʽ.Text = "HRC64~66"
Case Is = "1������"
����ʽ.Text = "--"
Case Is = "1�ǿ���"
����ʽ.Text = "͸��"
Case Is = "1--"
����ʽ.Text = "--"
End Select

If (���� = "SPCC" Or ���� = "SUS304") Then
  ��ע = "�ӽ��"
  ������� = "��װ��"
Else
   If (������� = "Բ��") Then
       ��ע = "Բ��"
   Else
       ��ע = "�ӹ���"
   End If
End If

End If


ͬ��.List(0) = ��̨����
ͬ��.List(1) = qq1
ͬ��.List(2) = strFileName
ͬ��.List(3) = �������
ͬ��.List(4) = ����
ͬ��.List(5) = ����ʽ
ͬ��.List(6) = qq3
ͬ��.List(7) = ��ע
ͬ��.List(8) = ���
ͬ��.List(9) = ���
ͬ��.List(10) = ��׼
ͬ��.List(11) = ��ǰ����
ͬ��.List(12) = �ӹ�������
ͬ��.List(13) = strFileType
ͬ��.List(14) = ����1
ͬ��.List(15) = ����2
ͬ��.List(16) = strFilePath

End Function


