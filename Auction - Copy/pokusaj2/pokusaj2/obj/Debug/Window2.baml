   M S B A M L   `   `   `  ����C  ?pokusaj2, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:pokusaj2pokusaj2  5   	       pokusaj2.Window2   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   (localclr-namespace:pokusaj2     5   	   -   5          � Title$  Korisnik��5	   	   $��437.868��6   $��647.841��6+   ���	#FF79D481.��5      � $��
0,0,-6.8,0q�6#    � DataContext 6   �� .+�5   
   &   System.Windows.Controls.DataGrid  -   5        $��aukcija_bazeDataGrid1��5   �      AutoGenerateColumns .     EnableRowVirtualization . $	��264��6N   $
��Left=�6[      RowDetailsVisibilityMode$ VisibleWhenSelected=�6�   $	��Top=�6�   $	��386��6�   $��	31,82,0,0q�68  ���	#FFFCF1F1��6v   ��    Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      -   5        aukcijaIdColumn��,  &System.Windows.Controls.DataGridColumn   Header$ Id Proizvoda��5   c      Width5  /System.Windows.Controls.DataGridLengthConverter$ SizeToHeader 6y   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6>   �� 	 �� Path$	 IdProizvoda�6y     5      -   5        artikalNameColumn��$ Naziv��5   _   $ SizeToHeader 6n    6@   �� $	 Naziv�6n     5      -   5        pocetnacijenaColumn��$ Pocetna Cijena��5   i   $ SizeToHeader 6�    6B   �� $	 PocetnaCijena�6�     5      -   5        trenutnacijenaColumn��$ Zadnja Cijena��5   i   $ SizeToHeader 6�    6C   �� $	 ZadnjaCijena�6�     5      -   5        zadnjaponudaColumn��$ Zadnja Ponuda��5   g   $ SizeToHeader 6~    6A   �� $	 ZadnjaPonuda�6~   5      �� 5   
   -   5        
 ��Name$
 button��5      $	��Bid��6!   $
��Left=�6/   $��
452,92,0,0q�6J   $	��Top=�6^   $��71��6v   ���	#FFFDF7F76�   �� 5   
   -	   5        $
 button1��5      $	��Bid��6"   $
��Left=�60   $��452,116,0,0q�6K   $	��Top=�6`   $��71��6x   ���	#FFFFF8F86�   �� 5   
   -
   5        $
 button2��5      $	��Bid��6"   $
��Left=�60   $��452,140,0,0q�6K   $	��Top=�6`   $��71��6x   ���	#FFFAF9F96�   �� 5   
   -   5        $
 button3��5      $	��Bid��6"   $
��Left=�60   $��452,164,0,0q�6K   $	��Top=�6`   $��71��6x   ���	#FFFCF8F86�   �� 5   
   -   5        $
 button4��5      $	��Bid��6"   $
��Left=�60   $��452,188,0,0q�6K   $	��Top=�6`   $��71��6x   ���	#FFFDFAFA6�   �� 5   
   -   5        $
 button5��5      $	��Bid��6"   $
��Left=�60   $��452,212,0,0q�6K   $	��Top=�6`   $��71��6x   ���	#FFFAF4F46�   5      5      