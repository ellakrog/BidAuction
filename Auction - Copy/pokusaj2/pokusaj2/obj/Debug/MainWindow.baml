   M S B A M L   `   `   `  ����  pokusaj2    pokusaj2.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	     � Title$  Auction��5   	   $��473.787��6   $��683.4��6*   ���	#FF76C577.��5      � $��
0,0,-6.8,0q�6#    � DataContext 6   �� .+�5   
   &   System.Windows.Controls.DataGrid  -   5        $��aukcija_bazeDataGrid��5   �      AutoGenerateColumns .     EnableRowVirtualization . $	��264��6N   $
��Left=�6[      RowDetailsVisibilityMode$ VisibleWhenSelected=�6�   $	��Top=�6�   $	��562��6�   $��
58,142,0,0q�66  ���	#FFFCF1F1��6v   ��    Columns 5	      0  *System.Windows.Controls.DataGridTextColumn  5
      -   5        aukcijaIdColumn��,  &System.Windows.Controls.DataGridColumn   Header$ Id Proizvoda��5
   c      Width5  /System.Windows.Controls.DataGridLengthConverter$ SizeToHeader 6y   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6>   �� 	 �� Path$	 IdProizvoda�6y     5      -   5        artikalNameColumn��$ Naziv��5   _   $ SizeToHeader 6n    6@   �� $	 Naziv�6n     5      -   5        pocetnacijenaColumn��$ Pocetna Cijena��5   i   $ SizeToHeader 6�    6B   �� $	 PocetnaCijena�6�     5      -   5        trenutnacijenaColumn��$ Zadnja Cijena��5   i   $ SizeToHeader 6�    6C   �� $	 ZadnjaCijena�6�     5      -   5        zadnjaponudaColumn��$ Zadnja Ponuda��5   g   $ SizeToHeader 6~    6A   �� $	 ZadnjaPonuda�6~   5      �� 5   
   -   5        $��button1��5   ]   $��Login��6   $��23��6!   $
��Left=�6-   $��158,114,0,0q�6H   $	��Top=�6l   $��75��6�   ���	#FFD036366�   �� 5   
   -   5        
 ��Name$
 label��5      $��UserName��6   $
��Left=�62   $��	24,25,0,0q�6M   $	��Top=�6`   �� 5   
   -	   5        $
 label1��5      $��Password��6    $
��Left=�63   $��	24,63,0,0q�6N   $	��Top=�6a   �� 5   
   -
   5         ��Name$ textBox��5      $
��Left=�6#   $��23��6>   $��
113,29,0,0q�6J    �� TextWrapping$
 Wrap=�6^   $	��Top=�6s   $	��120��6�   6�   �� 5   
   -   5        $ textBox1��5      $
��Left=�6$   $��23��6?   $��
113,67,0,0q�6K   $
 Wrap=�6_   $	��Top=�6t   $	��120��6�   6�   5      5      