   M S B A M L   `   `   `  ����  HOK Solibri Batch Manager&     SolibriBatchSetup.SaveFileWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	     � Title$  Save Configuration��5   	   $	��200��6$   $	��400��61   $	��200��6=   $	��400��6M    � Icon$ hoklogo.ico��6\    � WindowStartupLocation$ CenterOwner=�6o   .��5      �  � RowDefinitions 5   
   �� 5      �� 5      $��50 �6   .+�5
   
   �� $��Configuration File��6   $��Stretch=�6/   $��5q�6M   $��Stretch=�6X   .��5      �  5      �� 5      �� 5      .+�5      �� $&�� Enter a Configuration File Name.��6   $
��Left=�6C   $��	10,10,0,0q�6^   $	��Top=�6q   �� 5      -   5         ��Name$ textBoxFileName��5      $��Stretch=�63   $��23��6Q   $��
10,10,10,0q�6]   $��1��6q    �� TextWrapping$
 Wrap=�6~   $�� ��6�   $	��Top=�6�   5      5      �� 5   
   -   5         ��Name$ 
buttonSave��5      $
��Save��6%   $��Right=�64   $��	0,10,10,0q�6P   $��1��6c   $	��Top=�6p   $��75��6�   $��28��6�    �� 	IsDefault . 6�   �� 5   
   -   5        $ buttonCancel��5      $��Cancel��6'   $��Right=�68   $��	0,10,90,0q�6T   $��1��6g   $	��Top=�6t   $��75��6�   $��28��6�   6�   5      5      