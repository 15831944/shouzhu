   M S B A M L   `   `   `  ����Z  VXarial.XToolkit.Wpf, Version=0.1.0.0, Culture=neutral, PublicKeyToken=60dcaf351d4060dblIclr-namespace:Xarial.XToolkit.Wpf.Converters;assembly=Xarial.XToolkit.WpfXarial.XToolkit.Wpf.Converters  5      hGclr-namespace:Xarial.XToolkit.Wpf.Controls;assembly=Xarial.XToolkit.WpfXarial.XToolkit.Wpf.Controls  5      	 xport3   -Xarial.CadPlus.Xport.Views.ExportSettingsView   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      ZconvIclr-namespace:Xarial.XToolkit.Wpf.Converters;assembly=Xarial.XToolkit.Wpf     5      YctrlsGclr-namespace:Xarial.XToolkit.Wpf.Controls;assembly=Xarial.XToolkit.Wpf     5        � 	Resources  5
      >   8Xarial.XToolkit.Wpf.Converters.BooleanUniversalConverter   revBoolConv   	TrueValue   
FalseValue��%9   &	          5   
   $ False��6=   $
 True��6O   5      .��5      �  � RowDefinitions 5   
   �� 5      $��* �6   �� 5      $
��Auto �6   .+�5   
   �� $��2q�6    �� SelectedIndex 6    ��  �� Path$ ActiveTabIndex�.@�5      �� $��Settings��6   .��5      �  � IsSharedSizeScope . {�65   �� $ IsExportInProgress� �� 	Converter# [   5      �� 5      $��* �6(   �� 5      $
��Auto �6(   �� 5      $
��Auto �6(   �� 5      $
��Auto �6(   �� 5      $
��Auto �6(   .+�5      � $��0��6    � ColumnDefinitions 5      �� 5      $��* �6/   �� 5      $
��Auto �6/   �� 5       $
��Auto �6/    5"      �� 5#      $��* �6,   �� 5$      $
��Auto �6,   .+�5&      �� $��2q�6"   $��3��6-   	 �� SelectionMode$	 Extended=�6d   ��6A   �� $ Input�
 J� InputBindings
 5'      �� 5(   "   
 �� Key$ Delete��6-    �� Command 6:   �� $ DeleteInputCommand� �� CommandParameter 5)   -   �� $ SelectedItems� �� RelativeSource ��  �� AncestorType" ��6�   5+      �� 5,      $��1��6!   $��1��6.   $��Center=�6>   $��Center=�6Y   $��2q�6v   ��5-      �� $ AddFileCommand�.��5.      �� $��Add File...��6(   $��2q�6;   5/      �� 50      $��1��6!   $��2��6.   $��Center=�6>   $��Center=�6Y   $��2q�6v   ��51      �� $ AddFolderCommand�.��52      �� $��Add Folder...��6(   $��2q�6=   53      54      � 55      $��1��6    56      �� 57      $
��Auto �6/    z� SharedSizeGroup$ Label��6<   �� 58      $��* �6/   .+�5:      �� $��Filter:��6$   $��0��63   $��2q�6C   �� 5;      $��1��6d   $��2q�6t   ��6"   �� $ Filter� �� UpdateSourceTrigger$ PropertyChanged=�6t   5<      � 5=      $��2��6    5>      �� 5?      $
��Auto �6/   $ Label��6<   �� 5@      $��* �6/   .+�5B      �� $��Format:��6$   $��0��63   $��2q�6C   /   )Xarial.XToolkit.Wpf.Controls.EnumComboBox  5C      $��2q�6K   $��2��6V      Value 6-   �� $ Format�6V   5D      � 5E      $��3��6    5F      �� 5G      $
��Auto �6/   $ Label��6<   �� 5H      $��* �6/   �� 5I      $
��Auto �6/   �� 5J      $
��Auto �6/   .+�5L      �� $��Output Folder:��6$   $��0��6:   $��2q�6J   �� 5M      $��1��5O   "   $��2q�62   ��5M   "   �� $ OutputDirectory�$ PropertyChanged=�{�5N   "   �� $ IsSameDirectoryOutput�# [  5O   2   �� 5P      $��2��6!   $��Center=�61   $��Center=�6L   $��2q�6i   {�5Q   !   �� $ IsSameDirectoryOutput�# [  ��5R   !   �� $" BrowseOutputDirectoryCommand�.��5S      �� $��	Browse...��6(   $��2q�69   5T      �� 5U      $��3��6#   $��Center=�63   $��2q�6N    d� 	IsChecked 6Y   �� $ IsSameDirectoryOutput�.��6�   Same directory6�   5V      9� 5W      $��4��6   $	��0,2q�6,   $��Additional Settings��69   .��5X      � $��2q�6    5Y      �� 5Z   "   $
��Auto �63   $ Label��6@   �� 5[   "   $��* �63    5]      �� 5^   "   $
��Auto �60   �� 5_   "   $
��Auto �60   .+�5a      �� $��2��6'   $��2q�6;    6F   �� $ ContinueOnError�.��6q   Continue on error6�   �� 5b      $��1��6'   $��0��64   $��2q�6D    6O   �� $ IsTimeoutEnabled�.��5c   "   �� $��Timeout (sec):��6,   5d      3   -Xarial.XToolkit.Wpf.Controls.NumberBoxInteger  5e      $��1��65   $��1��6B   �   �Xarial.XToolkit.Wpf.Controls.NumberBox`1[[System.Int32, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]   Value 6R   �� $ Timeout�{�6q   �� $ IsTimeoutEnabled�5f      5g      5h      5i      �� 5j      $	��Log��6   .��5k      �  5l      �� 5m      $��* �6(   �� 5n      $
��Auto �6(    5p      �� 5q      $��* �6+   �� 5r      $
��Auto �6+   .+�5t      �� $��2q�6    �� AcceptsReturn .  �� 
AcceptsTab . $��2��6P    �� 
IsReadOnly . " �� VerticalScrollBarVisibility$
 Auto=�5v      $ �� HorizontalScrollBarVisibility$
 Auto=�6A   ��5u      �� $	 Log� �� Mode$ OneWay=�5v   A   � 5w      $��1��6"    � Minimum$ 0Q�6O   $��2q�6[    � Maximum$ 1Q�6f    � Value 6/   �� $ Progress�6f   �� 5x      $��1��6   $��1��6*   $��Stretch=�6:   $��2q�6V   $��75��6a   ��5y      �� $ CancelExportCommand�.��5z      �� $��Cancel��6$   $��2q�62   5{      5|      5}      5~      �� 5   
   $��1��6   $��Center=�6   $��75��69   $��Center=�6D   $��2q�6a   ��5�      �� $ ExportCommand�.��5�      �� $��Export��6   $��2q�6&   5�      5�      5�      