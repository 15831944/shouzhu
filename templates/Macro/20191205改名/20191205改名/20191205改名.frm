VERSION 5.00
Begin VB.Form UserForm1 
   BorderStyle     =   5  'Sizable ToolWindow
   Caption         =   "Solidworks�������"
   ClientHeight    =   1680
   ClientLeft      =   315
   ClientTop       =   510
   ClientWidth     =   10425
   DrawMode        =   1  'Blackness
   DrawStyle       =   4  'Dash-Dot-Dot
   FillColor       =   &H0000FF00&
   FillStyle       =   7  'Diagonal Cross
   BeginProperty Font 
      Name            =   "����"
      Size            =   10.5
      Charset         =   134
      Weight          =   700
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   ForeColor       =   &H00FF00FF&
   Icon            =   "20191205����.frx":0000
   KeyPreview      =   -1  'True
   LinkMode        =   1  'Source
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   PaletteMode     =   2  'Custom
   ScaleHeight     =   84
   ScaleMode       =   2  'Point
   ScaleWidth      =   521.25
   ShowInTaskbar   =   0   'False
   Begin VB.Frame Frame4 
      Caption         =   "��������"
      BeginProperty Font 
         Name            =   "����"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   6375
      Left            =   0
      TabIndex        =   30
      Top             =   2160
      Width           =   10335
      Begin VB.TextBox colure1 
         Height          =   315
         Left            =   120
         TabIndex        =   42
         Text            =   "1"
         Top             =   5880
         Width           =   1575
      End
      Begin VB.ListBox ���� 
         BeginProperty Font 
            Name            =   "����"
            Size            =   10.5
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   2790
         Left            =   6720
         TabIndex        =   36
         Top             =   240
         Width           =   3495
      End
      Begin VB.FileListBox File1 
         BeginProperty Font 
            Name            =   "����"
            Size            =   10.5
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   2610
         Left            =   6720
         TabIndex        =   35
         Top             =   3240
         Width           =   3495
      End
      Begin VB.ListBox �ж� 
         BeginProperty Font 
            Name            =   "����"
            Size            =   10.5
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   2580
         Left            =   3360
         TabIndex        =   34
         Top             =   3240
         Width           =   3135
      End
      Begin VB.ListBox ͬ�� 
         BeginProperty Font 
            Name            =   "����"
            Size            =   10.5
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   2790
         Left            =   3360
         TabIndex        =   33
         Top             =   240
         Width           =   3135
      End
      Begin VB.ListBox �Բ� 
         BeginProperty Font 
            Name            =   "����"
            Size            =   10.5
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   2580
         Left            =   120
         TabIndex        =   32
         Top             =   3240
         Width           =   2895
      End
      Begin VB.ListBox �˲� 
         BeginProperty Font 
            Name            =   "����"
            Size            =   10.5
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   2790
         Left            =   120
         TabIndex        =   31
         Top             =   240
         Width           =   3015
      End
   End
   Begin VB.Frame Frame3 
      BackColor       =   &H00FF80FF&
      Caption         =   "�ļ�"
      BeginProperty Font 
         Name            =   "����"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1815
      Left            =   10680
      TabIndex        =   10
      Top             =   0
      Width           =   10455
      Begin VB.CommandButton ͳ������ 
         Caption         =   "����"
         BeginProperty Font 
            Name            =   "����"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   360
         Left            =   120
         TabIndex        =   41
         Top             =   1200
         Width           =   1095
      End
      Begin VB.ComboBox ����ʽ 
         Appearance      =   0  'Flat
         BeginProperty Font 
            Name            =   "����"
            Size            =   12
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   360
         Left            =   1320
         TabIndex        =   40
         Top             =   720
         Width           =   1935
      End
      Begin VB.TextBox ����ͼģ��λ�� 
         BeginProperty Font 
            Name            =   "����"
            Size            =   10.5
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   360
         Left            =   1320
         TabIndex        =   39
         Top             =   1200
         Width           =   9015
      End
      Begin VB.TextBox ��� 
         BeginProperty Font 
            Name            =   "����"
            Size            =   10.5
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   360
         Left            =   9120
         TabIndex        =   21
         Top             =   240
         Width           =   1215
      End
      Begin VB.TextBox �ϱ� 
         BeginProperty Font 
            Name            =   "����"
            Size            =   10.5
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   350
         Left            =   7920
         TabIndex        =   20
         Top             =   240
         Width           =   1095
      End
      Begin VB.TextBox ����DWG�ĵ�λ�� 
         BeginProperty Font 
            Name            =   "����"
            Size            =   10.5
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   360
         Left            =   3360
         MultiLine       =   -1  'True
         TabIndex        =   19
         Top             =   720
         Width           =   6975
      End
      Begin VB.CommandButton ¼�뱣�� 
         Caption         =   "¼�뱣��"
         BeginProperty Font 
            Name            =   "����"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   360
         Left            =   120
         TabIndex        =   15
         Top             =   720
         Width           =   1095
      End
      Begin VB.TextBox ��ǰ���� 
         BeginProperty Font 
            Name            =   "����"
            Size            =   10.5
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   360
         Left            =   6360
         TabIndex        =   14
         Top             =   240
         Width           =   1455
      End
      Begin VB.TextBox ��׼ 
         BeginProperty Font 
            Name            =   "����"
            Size            =   10.5
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   360
         Left            =   4080
         TabIndex        =   13
         Top             =   240
         Width           =   2175
      End
      Begin VB.TextBox ��� 
         BeginProperty Font 
            Name            =   "����"
            Size            =   10.5
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   360
         Left            =   2040
         TabIndex        =   12
         Top             =   240
         Width           =   1935
      End
      Begin VB.TextBox ��� 
         BeginProperty Font 
            Name            =   "����"
            Size            =   10.5
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   360
         Left            =   120
         TabIndex        =   11
         Top             =   240
         Width           =   1815
      End
   End
   Begin VB.Frame Frame2 
      BackColor       =   &H00FFFF80&
      BeginProperty Font 
         Name            =   "����"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1215
      Left            =   5160
      TabIndex        =   6
      Top             =   -120
      Width           =   5295
      Begin VB.CheckBox ����2 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFF80&
         Caption         =   "��2"
         BeginProperty Font 
            Name            =   "����"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   180
         Left            =   2520
         TabIndex        =   38
         Top             =   480
         Width           =   615
      End
      Begin VB.CheckBox ����1 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFF80&
         Caption         =   "��1"
         BeginProperty Font 
            Name            =   "����"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   2520
         TabIndex        =   37
         Top             =   120
         Width           =   615
      End
      Begin VB.CommandButton ��ɫ 
         Caption         =   "��ɫ"
         BeginProperty Font 
            Name            =   "����"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   360
         Left            =   4320
         TabIndex        =   29
         Top             =   240
         Width           =   850
      End
      Begin VB.CommandButton �ļ���� 
         Caption         =   "���"
         BeginProperty Font 
            Name            =   "����"
            Size            =   10.5
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   360
         Left            =   4320
         TabIndex        =   28
         Top             =   720
         Width           =   850
      End
      Begin VB.CheckBox ���� 
         BackColor       =   &H00FFFF80&
         Caption         =   "����"
         BeginProperty Font 
            Name            =   "����"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   300
         Left            =   3360
         TabIndex        =   27
         Top             =   840
         Width           =   735
      End
      Begin VB.ComboBox ����ļ�ѡ�� 
         Appearance      =   0  'Flat
         BeginProperty Font 
            Name            =   "����"
            Size            =   12
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   360
         Left            =   1680
         TabIndex        =   26
         Top             =   720
         Width           =   1455
      End
      Begin VB.TextBox �ӹ������� 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BeginProperty Font 
            Name            =   "����"
            Size            =   12
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   360
         Left            =   1680
         TabIndex        =   23
         Text            =   "1"
         Top             =   240
         Width           =   735
      End
      Begin VB.CommandButton �����޸� 
         Caption         =   "����"
         BeginProperty Font 
            Name            =   "����"
            Size            =   10.5
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   360
         Left            =   3360
         TabIndex        =   9
         Top             =   240
         Width           =   855
      End
      Begin VB.ComboBox ������� 
         Appearance      =   0  'Flat
         BeginProperty Font 
            Name            =   "����"
            Size            =   12
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   360
         Left            =   120
         TabIndex        =   8
         Top             =   720
         Width           =   1455
      End
      Begin VB.ComboBox ���� 
         Appearance      =   0  'Flat
         BeginProperty Font 
            Name            =   "����"
            Size            =   12
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   360
         Left            =   120
         TabIndex        =   7
         Top             =   240
         Width           =   1455
      End
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H0080FF80&
      BeginProperty Font 
         Name            =   "����"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   1215
      Left            =   0
      TabIndex        =   0
      Top             =   -120
      Width           =   5175
      Begin VB.CommandButton ��ԭ 
         Appearance      =   0  'Flat
         Caption         =   "��ԭ"
         BeginProperty Font 
            Name            =   "����"
            Size            =   10.5
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   360
         Left            =   3240
         TabIndex        =   25
         Top             =   240
         Width           =   850
      End
      Begin VB.ComboBox ����ѡ�� 
         Appearance      =   0  'Flat
         BeginProperty Font 
            Name            =   "����"
            Size            =   12
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   360
         Left            =   3120
         TabIndex        =   24
         Top             =   720
         Width           =   975
      End
      Begin VB.CommandButton ��ȡ�ļ� 
         Caption         =   "��ȡ"
         BeginProperty Font 
            Name            =   "����"
            Size            =   10.5
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   360
         Left            =   4200
         TabIndex        =   22
         Top             =   240
         Width           =   850
      End
      Begin VB.CommandButton ������� 
         Caption         =   "����"
         BeginProperty Font 
            Name            =   "����"
            Size            =   10.5
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   360
         Left            =   4200
         TabIndex        =   5
         Top             =   720
         Width           =   850
      End
      Begin VB.TextBox ��Ŀ��� 
         Appearance      =   0  'Flat
         BeginProperty Font 
            Name            =   "����"
            Size            =   12
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   360
         Left            =   600
         TabIndex        =   4
         Top             =   720
         Width           =   2415
      End
      Begin VB.TextBox ��̨���� 
         Appearance      =   0  'Flat
         BeginProperty Font 
            Name            =   "����"
            Size            =   12
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   360
         Left            =   600
         TabIndex        =   2
         Top             =   240
         Width           =   2415
      End
      Begin VB.Label Label2 
         BackColor       =   &H0080FF80&
         Caption         =   "��Ŀ"
         BeginProperty Font 
            Name            =   "����"
            Size            =   10.5
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   360
         Left            =   120
         TabIndex        =   3
         Top             =   720
         Width           =   615
      End
      Begin VB.Label Label1 
         BackColor       =   &H0080FF80&
         Caption         =   "��̨"
         BeginProperty Font 
            Name            =   "����"
            Size            =   10.5
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   330
         Left            =   120
         TabIndex        =   1
         Top             =   255
         Width           =   495
      End
   End
   Begin VB.Frame Frame5 
      BackColor       =   &H008080FF&
      BeginProperty Font 
         Name            =   "����"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   0
      TabIndex        =   16
      Top             =   960
      Width           =   10455
      Begin VB.TextBox ��ʾ���� 
         Alignment       =   2  'Center
         BeginProperty Font 
            Name            =   "����"
            Size            =   12
            Charset         =   134
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   120
         MultiLine       =   -1  'True
         TabIndex        =   18
         Top             =   240
         Width           =   10215
      End
      Begin VB.Label Label6 
         Caption         =   "Label6"
         BeginProperty Font 
            Name            =   "����"
            Size            =   10.5
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   135
         Left            =   1800
         TabIndex        =   17
         Top             =   720
         Width           =   15
      End
   End
End
Attribute VB_Name = "UserForm1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Declare Function SetWindowPos Lib "user32" (ByVal hWnd As Long, ByVal hWndInsertAfter As Long, ByVal X As Long, ByVal Y As Long, ByVal cx As Long, ByVal cy As Long, ByVal wFlags As Long) As Long

Public swModel2 As SldWorks.ModelDoc2
Public PARTNAME_Value_temp As String
Public MATERIAL_Value2_temp As String

Private Sub Form_Load()

On Error Resume Next

SetWindowPos Me.hWnd, -1, 0, 0, 0, 0, 2 Or 1

Call �������(����, ����ʽ, �������, �ӹ������, ����ѡ��, ����ļ�ѡ��)

Call �����ȡ(�˲�)

Call �ⲿ�ĵ�д�����(�˲�, ��̨����, ��Ŀ���, ���, ���, ��׼, ���, �ϱ�, ����DWG�ĵ�λ��, ����ͼģ��λ��, ��ǰ����)

UserForm1.Left = ���.Text
UserForm1.Top = �ϱ�.Text
 
End Sub

Private Sub ¼�뱣��_Click()

Call ����¼�뱣��(��̨����, ��Ŀ���, ���, ���, ��׼, ���, �ϱ�, ����DWG�ĵ�λ��, ����ͼģ��λ��, �Բ�)

Call ��ʾģ��(�Բ�, ��ʾ����, ��Ŀ���)

End Sub

Private Sub cancel_button_Click()
    Unload UserForm1
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer)
If KeyAscii = 27 Then '������ļ���Esc��
'End '��ô�˳�����
End If
End Sub
'==============================================================================��

Private Sub ��ԭ_Click()

Call ��ʼ��(�˲�, �Բ�, ͬ��, �ж�, ��ʾ����, ����)

Call �ữ��ԭ(�Բ�)

Call ��ʾģ��(�Բ�, ��ʾ����, ��Ŀ���)

End Sub

'=================================================
'��ȡ�ļ�
'=================================================
Private Sub ��ȡ�ļ�_Click()

Call ��ʼ��(�˲�, �Բ�, ͬ��, �ж�, ��ʾ����, ����)

Call ��ȡ������Ϣ(�Բ�, �˲�, ����, ����DWG�ĵ�λ��, ��ǰ����, ��̨����)

Call ��ʾģ��(�Բ�, ��ʾ����, ��Ŀ���)

End Sub

'=================================================
'�������
'=================================================
Private Sub �������_Click()

Call ��ʼ��(�˲�, �Բ�, ͬ��, �ж�, ��ʾ����, ����)

Call ��ȡ������Ϣ(�Բ�, �˲�, ����, ����DWG�ĵ�λ��, ��ǰ����, ��̨����)

Call ��ѡ����ͳ��(�˲�, ͬ��, �ж�, �Բ�, ����)

Call ����(�˲�, �Բ�, ͬ��, ����, �ж�, ��Ŀ���, ����ѡ��)  '

'Call �����ļ�

Call ��ʾģ��(�Բ�, ��ʾ����, ��Ŀ���)

Set swpart = Nothing
Set swModel = Nothing
Set swapp = Nothing

End Sub

'=================================================
'�����޸�
'=================================================

Private Sub �����޸�_Click()

Call ��ʼ��(�˲�, �Բ�, ͬ��, �ж�, ��ʾ����, ����)

Call ��ȡ������Ϣ(�Բ�, �˲�, ����, ����DWG�ĵ�λ��, ��ǰ����, ��̨����)

Call ����ֵ��ѡ(����, ����ʽ, �������, ����1, ����2, ͬ��, ��̨����, ��Ŀ���, ���, ���, ��׼, ��ǰ����, �ӹ�������)

Call �½�����ͼ(ͬ��, �˲�, �Բ�, ����ͼģ��λ��)

If (�˲�.List(10) = "�½�" Or �˲�.List(3) = "SLDDRW") Then

Call ���ַ���(ͬ��, �������)

Call �������

Call ��������(ͬ��, �Բ�)

Else

�Բ�.List(0) = "����"

�Բ�.List(1) = "����ͼ�򿪣�δ�������"

End If

Call �����ļ�

Call ��ʾģ��(�Բ�, ��ʾ����, ��Ŀ���)

Set swpart = Nothing
Set swModel = Nothing
Set swapp = Nothing

End Sub

'=================================================
'����ͳ��
'=================================================

Private Sub ͳ������_Click()

Call ��ʼ��(�˲�, �Բ�, ͬ��, �ж�, ��ʾ����, ����)

Call ����ͳ��(�Բ�)

Call ��ʾģ��(�Բ�, ��ʾ����, ��Ŀ���)

End Sub

'=================================================
'��ɫ�޸�
'=================================================
Private Sub ��ɫ_Click()

Call ��ʼ��(�˲�, �Բ�, ͬ��, �ж�, ��ʾ����, ����)

Call ��ɫ�޸�(�Բ�, �˲�, colure1)

Call ��ʾģ��(�Բ�, ��ʾ����, ��Ŀ���)

End Sub

'=================================================
'�ļ�����
'=================================================

Private Sub �ļ����_Click()

Call ��ʼ��(�˲�, �Բ�, ͬ��, �ж�, ��ʾ����, ����)

Call ��ȡ������Ϣ(�Բ�, �˲�, ����, ����DWG�ĵ�λ��, ��ǰ����, ��̨����)

Dim strMMM As String

strMMM = ����ļ�ѡ��.Text

Select Case strMMM

Case Is = "��Ŀ����"

Call ��Ŀ�ļ�����(����DWG�ĵ�λ��, ��̨����, �Բ�)

Case Is = "Dwg/Step"

Call DWG��PDF����(����DWG�ĵ�λ��, ��ʾ����, �Բ�, ����, �˲�)

Case Is = "Part"

Call Part����(����DWG�ĵ�λ��, ��ʾ����, �Բ�, ����, �˲�)

Case Is = "�������"

Call ������������ֵд��(�Բ�)

Case Is = "����Bom"

Call ��ȡ������Ϣ(�Բ�, �˲�, ����, ����DWG�ĵ�λ��, ��ǰ����, ��̨����)

Call �½��ĵ�(����DWG�ĵ�λ��, �Բ�, ����, �˲�)

Call ����ͼ����(�˲�, ����, �ж�, ͬ��, File1, ����, �Բ�)

Call ����Bom(�˲�, ����, ����)

Call д����(ͬ��, ����)

Case Is = "����Bom"

Call ��ȡ������Ϣ(�Բ�, �˲�, ����, ����DWG�ĵ�λ��, ��ǰ����, ��̨����)

Call ��������ͼBom(����, �˲�, ����, �ж�, ͬ��, �Բ�)

Case Else
       
End Select

Call ��ʾģ��(�Բ�, ��ʾ����, ��Ŀ���)

End Sub






