   M S B A M L   `   `   `  ����  HOK Solibri Batch Manager%    SolibriBatchSetup.SettingWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   -   5          � Title$  Settings��5   	   $	��900��6   $	��700��6'   $	��900��64   $	��700��6D    � Icon$ Images/hoklogo.ico��6S    � WindowStartupLocation$ CenterOwner=�5   	    � 	Resources 5       �� MergedDictionaries �� Source�� 5   
    5      �� 5	      $ MetroStyles.xaml?�6%   %    5      .��5      �  � RowDefinitions 5   
   �� 5      $	��100 �6   �� 5      �� 5      $	��240 �6   �� 5      $	��120 �6   �� 5      $��40 �6   .+�5   
   �� $��Batch Options��6   $��7,7,7,0q�6*   $��Stretch=�6;   $��Stretch=�6Y   .��5      �  5      �� 5      �� 5      .+�5      �� $��Solibri Version: ��6   $
��Left=�64   $��46,0,0,0q�6O   $��Center=�6a   �� 5      -   5         ��Name$ comboBoxSolibri��5      $��Stretch=�64   $��145,0,100,0q�6R   $��Center=�6g   
������ $��28��6�    �� DisplayMemberPath$ VersionNumber��5      	 �� SelectedValue	 6=   �� *SolibriSetup+��6d   �� *Options.SolibriOptions+�� 5      $��Remote Computer: ��6   $��1��64   $
��Left=�6A   $��25,0,0,0q�6\   $��Center=�6n   �� 5      -   5        $ comboBoxComputer��5      $��Stretch=�65   $��1��6S   $��145,0,100,0q�6`   $��Center=�6u   
������ $��28��6�   $ DirectoryName��5       	 6=   �� *RemoteSetup+��6c   �� *Options.RemoteOptions+�� 5!      -   5        
 ��Name$
 buttonEditOption��5!      $��Right=�63   $��Center=�6O   $��0,0,10,0q�6j   $��28��6|   $��28��6�   .��5"      �� $��20��6   $��20��6(   $��Images/gear.png��63   5#      5$      5%      �� 5&   
   $"��Classifications and Rulesets��6   $��7,7,7,0q�69   $��1��6J   $��Stretch=�6W   $��Stretch=�6u   .��5'      �  5(      �� 5)      �� 5*      $��40 �6$   �� 5+      �� 5,      $��40 �6$   .+�5.      &   System.Windows.Controls.DataGrid  -   5          Name$ dataGridClassification��5.      $��Stretch=�6;   $��Stretch=�6Y   $��7,7,7,0q�6u      
IsReadOnly .    SelectionMode$ Extended=�5/   5      CanUserAddRows .     CanUserDeleteRows .  ��50   #   �� *Classifications+   Columns 51      0  *System.Windows.Controls.DataGridTextColumn  52      ,  &System.Windows.Controls.DataGridColumn   Header$ Classification File��6-      Width5  /System.Windows.Controls.DataGridLengthConverter$ 1* 6J   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6U   �� *File+54      �� 55      -   5        $
 buttonAddClass��55   &   $��1��6   $
��Left=�6>   $��10,7,0,0q�6Y   $	��Top=�6k   $��28��6�   $��28��6�   .��56      �� $��20��6   $��20��6)   $��Images/add.png��64   57      �� 58      -   5        $
 buttonDeleteClass��58   &   $��1��6   $
��Left=�6A   $��43,7,0,0q�6\   $	��Top=�6n   $��28��6�   $��28��6�   .��59      �� $��20��6   $��20��6(   $��Images/delete.png��63   5:        5;      -   5        $ dataGridRuleset��5;   (   $��2��6   $��Stretch=�6A   $��Stretch=�6_   $��7,7,7,0q�6{    . $ Extended=�5<   5    .   .  ��5=   #   �� *
Rulesets+ 5>        5?      $ Ruleset File��6-   $ 1* 6C    6N   �� *File+5A      �� 5B      -	   5        $
 buttonAddRule��5B   &   $��3��6   $
��Left=�6=   $��10,7,0,0q�6X   $	��Top=�6j   $��28��6�   $��28��6�   .��5C      �� $��20��6   $��20��6)   $��Images/add.png��64   5D      �� 5E      -
   5        $
 buttonDeleteRule��5E   &   $��3��6   $
��Left=�6@   $��43,7,0,0q�6[   $	��Top=�6m   $��28��6�   $��28��6�   .��5F      �� $��20��6   $��20��6(   $��Images/delete.png��63   5G      5H      5I      �� 5J   
   $��Reports��6   $��7,7,7,0q�6$   $��2��65   $��Stretch=�6B   $��Stretch=�6`   .��5K      �  5L      �� 5M      $��40 �6$   �� 5N      $��40 �6$   �� 5O      �� 5P      �� 5Q      �� 5R      .+�5T      �� $#��Select Report Types to Apply.��6   $��5,5,0,0q�6@   $
��Left=�6Q   $��Center=�6l   �� 5U       �� Orientation$ 
Horizontal=�6   $��1��66   .+�5V      �� -   5         ��Name$ checkBoxChecking��5V      $��Report from Checking��69   $��5q�6X    d� 	IsChecked 5W      �� *#!ReportSettings.IsCheckingSelected+�� 5X      -   5        $ checkBoxPresentation��5X      $��1��6=   $��Report from Presentation��6M   $��5q�6p    5Y      �� *'%ReportSettings.IsPresentationSelected+�� 5Z      -   5        $ checkBoxBCF��5Z      $��2��64   $��
BCF Report��6D   $��5q�6Y    5[      �� *ReportSettings.IsBCFSelected+�� 5\      -   5        $ checkBoxCoord��5\      $��3��66   $��Coordination Report��6F   $��5q�6d    5]      �� *'%ReportSettings.IsCoordinationSelected+5^      	� 5_      -   5         	�Name$ radioButtonInPlaceReport��5_   +   $��2��6   $��Save In Place��6M   $
��Left=�6e   $��10,0,0,0q�6�   $	��Top=�6�    5`   "   �� *ReportSettings.SaveInPlace+	� 5a      -   5        $ radioButtonFolderReport��5a      $��3��6?   $��Save In Folder: ��6L   $
��Left=�6g   $��10,0,0,0q�6�   $	��Top=�6�   ��5b      �� 5c       �� 
TargetType" 	�6     �� Triggers 5d      �� 5e   "    �� Binding 6.   �� *	IsChecked+ �� ElementName$ radioButtonInPlaceReport�� �� Value True6r   .a�5f   &   ��  �� Property �@d�	IsChecked �� Value$ FalseY�6B   5g   #   �� 5h   "    6.   �� *	IsChecked+$ radioButtonInPlaceReport��	 False6r   .a�5i   &   ��  �@d�	IsChecked$
 TrueY�6B   5j   #   5l      5n      �� 5o      -   5         ��Name$ textBoxReportFolder��5o        �� 
IsReadOnly  . $��3��6I   $��Stretch=�6V   $��23��6t   $��
111,0,39,0q�6�   ! �� TextWrapping$
! Wrap=�6�   $	��Top=�6�   ��5p      �� *ReportSettings.OutputFolder+�� 5q      -   5        $
 buttonOpenReportFolder��5q      $��3��69   $��Right=�6F   $��0,0,10,0q�6b   $	��Top=�6u   $��24��6�   $��24��6�   .��5r      �� $��15��6   $��16��6)   $��Images/folder.png��64   5s      �� 5t      -   5        $ checkBoxAppendReport��5t      $��4��69   $��Append Date in File Names��6F   $
��Left=�6j   $��10,0,0,0q�6�   $	��Top=�6�    5u      �� *ReportSettings.AppendDate+�� 5v      $��5��6   $��Coordination Template:��6%   $
��Left=�6F   $��Center=�6a   $��10,0,0,0q�6|   �� 5w      -   5        $ textBoxTemplate��5w      $��5��63   $��Stretch=�6@   $��23��6^   $��
145,0,39,0q�6j   $
! Wrap=�6~   $��Center=�6�   ��5x      �� *%#ReportSettings.CoordinationTemplate+�� 5y      -   5        $
 buttonOpenTemplate��5y      $��5��65   $��Right=�6B   $��Center=�6^   $��0,0,10,0q�6y   $��24��6�   $��24��6�   .��5z      �� $��15��6   $��16��6)   $��Images/folder.png��64   5{      5|      5}      �� 5~   
   $��Saving Solibri Model��6   $��7,7,7,0q�61   $��3��6B   $��Stretch=�6O   $��Stretch=�6m   .��5      �  5�      �� 5�      �� 5�      �� 5�      .+�5�      	� -   5        $ radioButtonInPlaceSolibri��5�      $��Save In Place��6A   $
��Left=�6Y   $��10,5,0,0q�6t   $	��Top=�6�    5�      �� *!SaveSolibriSettings.SaveInPlace+	� 5�      -   5        $ radioButtonFolderSolibri��5�      $��Save In Folder: ��6@   $
��Left=�6[   $��10,5,0,0q�6v   $��1��6�   $	��Top=�6�   ��5�      �� 5�      " 	�6     5�      �� 5�   "    6.   �� *	IsChecked+$ radioButtonInPlaceSolibri�� True6s   .a�5�   &   ��  �@d�	IsChecked$ FalseY�6B   5�   #   �� 5�   "    6.   �� *	IsChecked+$ radioButtonInPlaceSolibri��	 False6s   .a�5�   &   ��  �@d�	IsChecked$
 TrueY�6B   5�   #   5�      5�      �� 5�      -   5        $ textBoxSolibriFolder��5�      $��Stretch=�68   $��23��6V   $��
111,0,39,0q�6b   $��1��6v   $
! Wrap=�6�   $	��Top=�6�   ��5�      �� *" SaveSolibriSettings.OutputFolder+�� 5�      -   5        $
 buttonOpenSolibriFolder��5�      $��Right=�6:   $��0,0,10,0q�6V   $��1��6h   $	��Top=�6u   $��24��6�   $��24��6�   .��5�      �� $��15��6   $��16��6)   $��Images/folder.png��64   5�      �� 5�      -   5        $ checkBoxAppendSolibri��5�      $��Append Date in File Names��6:   $
��Left=�6^   $��	10,10,0,0q�6y   $��2��6�   $	��Top=�6�    5�      �� * SaveSolibriSettings.AppendDate+5�      5�      �� 5�   
   -   5        $
 buttonDefault��5�      $��Set Default��6(   $
��Left=�6>   $��	10,5,15,0q�6Y   $��4��6l   $	��Top=�6y   $��75��6�   $��27��6�   6�   �� 5�   
   -   5        $
 buttonApply��5�      $��Apply��6&   $��Right=�66   $��0,5,15,0q�6R   $��4��6d   $	��Top=�6q   $��75��6�   $��27��6�   " �� 	IsDefault" . 6�   �� 5�   
   -   5        $
 buttonCancel��5�      $��Cancel��6'   $��Right=�68   $��0,5,95,0q�6T   $��4��6f   $	��Top=�6s   $��75��6�   $��27��6�   6�   5�      5�      