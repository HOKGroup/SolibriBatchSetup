   M S B A M L   `   `   `  ����  HOK Solibri Batch Manager&     SolibriBatchSetup.OpenFileWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	     � Title$  Open Configuration File��5   	   $	��400��6)   $	��400��66    � Icon$ hoklogo.ico��6B    � WindowStartupLocation$ CenterOwner=�6U    � 	Resources 5      &   System.Windows.Controls.DataGrid �� 
TargetType �� Property �� Value��%  '        �� 5   
   "  6   .�5      ��  � ��
 �����6+   �� 5       �@ AutoGenerateColumns .  64   �� 5	        �@ HorizontalGridLinesBrush
 �����69   �� 5
       �@ VerticalGridLinesBrush
 �����67   �� 5       �@ HeadersVisibility$ Column=�62   �� 5       �@ SelectionMode$ Single=�6.   �� 5       � ��$ Stretch=�64   �� 5       � ��$ Stretch=�62   �� 5       � ��$ 5q�6'   �� 5       � ��
 �����6,   5      5      .��5      �  � RowDefinitions 5   
   �� 5      �� 5      $��50 �6   .+�5   
   �� $��Configuration Files��6   $��Stretch=�60   $��7q�6N   $��Stretch=�6Y   .��5      � .+�5        -   5          Name$ dataGridFile��5      	   CanUserAddRows	 .  
   CanUserDeleteRows
 .     
IsReadOnly .    Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ 	File Name��6-      Width5  /System.Windows.Controls.DataGridLengthConverter$ 1* 6@   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6K   �� *FileNameOnly+5      5      5       �� 5!   
   -   5         ��Name$ 
buttonOpen��5!      $
��Open��6%   $��Right=�64   $��0,5,15,0q�6P   $��1��6b   $	��Top=�6o   $��28��6�   $��75��6�   6�   �� 5"   
   -   5        $ buttonCancel��5"      $��Cancel��6'   $��Right=�68   $��0,5,95,0q�6T   $��1��6f   $	��Top=�6s   $��28��6�   $��75��6�   6�   5#      5$      