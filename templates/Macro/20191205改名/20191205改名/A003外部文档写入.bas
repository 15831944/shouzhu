Attribute VB_Name = "A003"
Public Function �����ȡ(�˲�)

    Const ForReading = 1, ForWriting = 2, ForAppending = 3
    Const TristateUseDefault = -2, TristateTrue = -1, TristateFasle = 0
    Dim fs, f, Nfile
    Set fs = CreateObject("Scripting.FileSystemObject")
    On Error Resume Next
    Set f = fs.GetFile("D:\\Solidworksavedeta11.tmp")
    If f Then
        Set Nfile = f.openastextStream(ForReading, TristateUseDefault)
        '====================================================================
        loaded_��̨���� = Nfile.ReadLine
        loaded_��Ŀ��� = Nfile.ReadLine
        loaded_��� = Nfile.ReadLine
        loaded_��� = Nfile.ReadLine
        loaded_��׼ = Nfile.ReadLine
        loaded_����DWG�ĵ�λ�� = Nfile.ReadLine
        loaded_����ͼģ��λ�� = Nfile.ReadLine
        loaded_��� = Nfile.ReadLine
        loaded_�ϱ� = Nfile.ReadLine

        Nfile.Close
    End If

        ��̨���� = loaded_��̨����
        ��Ŀ��� = loaded_��Ŀ���
        ��� = loaded_���
        ��� = loaded_���
        ��׼ = loaded_��׼
        ����DWG�ĵ�λ�� = loaded_����DWG�ĵ�λ��
        ����ͼģ��λ�� = loaded_����ͼģ��λ��
        ��� = loaded_���
        �ϱ� = loaded_�ϱ�
                
�˲�.List(0) = ��̨����
�˲�.List(1) = ��Ŀ���
�˲�.List(2) = ���
�˲�.List(3) = ���
�˲�.List(4) = ��׼
�˲�.List(5) = ���
�˲�.List(6) = �ϱ�
�˲�.List(7) = ����DWG�ĵ�λ��
�˲�.List(8) = Data
�˲�.List(9) = ����ͼģ��λ��
    
End Function

Public Function �ⲿ�ĵ�д�����(�˲�, ��̨����, ��Ŀ���, ���, ���, ��׼, ���, �ϱ�, ����DWG�ĵ�λ��, ����ͼģ��λ��, ��ǰ����)

    '�ⲿ�ļ�����
    Const ForReading = 1, ForWriting = 2, ForAppending = 3
    Const TristateUseDefault = -2, TristateTrue = -1, TristateFasle = 0
    Dim fs, f, Nfile
    Set fs = CreateObject("Scripting.FileSystemObject")
    On Error Resume Next
    Set f = fs.GetFile("D:\\Solidworksavedeta11.tmp")
    If f Then
        Set Nfile = f.openastextStream(ForReading, TristateUseDefault)
        loaded_��̨���� = Nfile.ReadLine
        loaded_��Ŀ��� = Nfile.ReadLine
        loaded_��� = Nfile.ReadLine
        loaded_��� = Nfile.ReadLine
        loaded_��׼ = Nfile.ReadLine
        loaded_����DWG�ĵ�λ�� = Nfile.ReadLine
        loaded_����ͼģ��λ�� = Nfile.ReadLine
        loaded_��� = Nfile.ReadLine
        loaded_�ϱ� = Nfile.ReadLine
        
         
        Nfile.Close
    End If

    '����Զ�������
    Set swapp = GetObject(, "SldWorks.Application")
    Set swpart = swapp.ActiveDoc
    Set swSheet = swpart.GetCurrentSheet
    Set swActiveView = swpart.ActiveDrawingView
    Dim retval As Variant

        ��̨����.Text = loaded_��̨����
        ��Ŀ���.Text = loaded_��Ŀ���
        ���.Text = loaded_���
        ���.Text = loaded_���
        ��׼.Text = loaded_��׼
        ����DWG�ĵ�λ��.Text = loaded_����DWG�ĵ�λ��
        ����ͼģ��λ��.Text = loaded_����ͼģ��λ��
        ���.Text = loaded_���
        �ϱ�.Text = loaded_�ϱ�
        
        
��ǰ����.Text = Date
��̨����.Text = �˲�.List(0)
��Ŀ���.Text = �˲�.List(1)
���.Text = �˲�.List(2)
���.Text = �˲�.List(3)
��׼.Text = �˲�.List(4)
���.Text = �˲�.List(5)
�ϱ�.Text = �˲�.List(6)
����DWG�ĵ�λ��.Text = �˲�.List(7)
�˲�.List(8) = ��ǰ����
����ͼģ��λ�� = �˲�.List(9)
        
  '==========================================================================
End Function


Public Function ����¼�뱣��(��̨����, ��Ŀ���, ���, ���, ��׼, ���, �ϱ�, ����DWG�ĵ�λ��, ����ͼģ��λ��, �Բ�)

    '������д���ⲿ�ļ�===============================================================
    Const ForReading = 1, ForWriting = 2, ForAppending = 3
    Const TristateUseDefault = -2, TristateTrue = -1, TristateFasle = 0
    Dim fs, f, Nfile
    Set fs = CreateObject("Scripting.FileSystemObject")
    On Error Resume Next
    Set f = fs.CreateTextFile("D:\\Solidworksavedeta11.tmp")
    If f Then
        Set Nfile = f.openastextStream(ForReading, TristateUseDefault)
        f.WriteLine (��̨����)
        f.WriteLine (��Ŀ���)
        f.WriteLine (���)
        f.WriteLine (���)
        f.WriteLine (��׼)
        f.WriteLine (����DWG�ĵ�λ��)
        f.WriteLine (����ͼģ��λ��)
        f.WriteLine (���)
        f.WriteLine (�ϱ�)
        
        Nfile.Close
    End If
    
�Բ�.List(0) = "��ȷ"
�Բ�.List(1) = "����¼�����"
     
End Function


