Attribute VB_Name = "A012"
Public Function ���ַ���(ͬ��, �������)


Dim strMMMD As String

strMMMD = �������.Text

  Select Case strMMMD
  
  Case Is = "�װ�"
  
  ͬ��.List(3) = "floor"
  
  Case Is = "����"
         
   ͬ��.List(3) = "Frame"
         
  Case Is = "������"
  
  ͬ��.List(3) = "Shield"
         
  Case Is = "���"
         
   ͬ��.List(3) = "Padding block "
         
  Case Is = "վ��"
  
   ͬ��.List(3) = "Stand foot"
         
  Case Is = "��ǿ��"
  
   ͬ��.List(3) = "Reinforced tendons"
      
  Case Is = "����"
  
   ͬ��.List(3) = "Slide"
      
  Case Is = "����"
  
   ͬ��.List(3) = "Block"
             
  Case Is = "�ǰ�"
  
   ͬ��.List(3) = "Coverplate"
   
  Case Is = "���ӿ�"
  
   ͬ��.List(3) = "Connection Block"
   
     Case Is = "��"
  
   ͬ��.List(3) = "Knife"
   
     Case Is = "��"
  
   ͬ��.List(3) = "PIN"
   
     Case Is = "Բ��"
  
   ͬ��.List(3) = "Pillar"
   
     Case Is = "��װ��"
  
   ͬ��.List(3) = "Install Block"
   
     Case Is = ""
  
   ͬ��.List(3) = ""
        
  End Select
End Function
