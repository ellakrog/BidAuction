   M S B A M L   `   `   `  ����C  ?pokusaj2, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:pokusaj2pokusaj2  5   	       pokusaj2.Window1   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   (localclr-namespace:pokusaj2     5   	     � Title$  Admin��5   	   $��420.6��6   $	��612��6&   ���	#FF7ACA71.��5	      � $��0,0,3.6,0.2q�6   .+�5
   
   &   System.Windows.Controls.DataGrid  -   5        $��aukcija_bazeDataGrid1��5
   �      AutoGenerateColumns .     EnableRowVirtualization . $	��259��6N   $
��Left=�6[      RowDetailsVisibilityMode$ VisibleWhenSelected=�6�   $	��Top=�6�   $	��429��6�   $��	85,54,0,0q�68  ���	#FFFCF2F1��6v   ��    Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      -   5        aukcijaIdColumn��,  &System.Windows.Controls.DataGridColumn   Header$ Id Proizvoda��5   c      Width5  /System.Windows.Controls.DataGridLengthConverter$ SizeToHeader 6y   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6>   ��  �� Path$ IdProizvoda�6y     5      -   5        artikalNameColumn��$ Naziv��5   _   $ SizeToHeader 6n    6@   �� $ Naziv�6n     5      -   5        pocetnacijenaColumn��$ Pocetna Cijena��5   i   $ SizeToHeader 6�    6B   �� $ PocetnaCijena�6�     5      -   5        trenutnacijenaColumn��$ Zadnja Cijena��5   i   $ SizeToHeader 6�    6C   �� $ ZadnjaCijena�6�     5      -   5        zadnjaponudaColumn��$ Zadnja Ponuda��5   g   $ SizeToHeader 6~    6A   �� $ ZadnjaPonuda�6~   5      �� 5   
   -   5        	 ��Name$	 button��5      $��Novi proizvod��6!   $
��Left=�69   $��
38,330,0,0q�6T   $	��Top=�6h   $	��126��6�   $��33��6�   $��14(�6�   ���	#FFFFF9F86�   �� 5   
   -   5        $	 button1��5      $��Obrisi��6"   $
��Left=�63   $��468,329,0,0q�6N   $	��Top=�6c   $��98��6{   $��33��6�   $��16(�6�   ���	#FFFCF4F36�   �� 5   
   -	   5        
 ��Name$
 label��5      $��Naziv��6   $
��Left=�6/   $��275,332,0,0q�6J   $	��Top=�6_   $��31��6w   $��63��6�   $��14(�6�   $��Verdana)�6�   �� 5   
   -
   5         ��Name$ textBox��5      $
��Left=�6#   $��33��6>   $��343,330,0,0q�6J    �� TextWrapping$
 Wrap=�6_   $	��Top=�6s   $	��120��6�   5      5      