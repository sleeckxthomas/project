   M S B A M L   `   `   `  ����B  >project, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:projectproject  5   	       project.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:project     5   	   -   5          � Title$  
MainWindow��5   	   $	��950��6   $	��800��6)   .��5	      � .+�5
   
   �� -   5         ��Name$
 menu��5
      $y�Hidden=�6%   .��5      �� $	��800��6   
�������.+�5      �� $	��200��6   $	��800��6)    �� TextAlignment$ Center=�65   $	��125(�6L    �� Padding$ 5q�6[   $
��Bold"�6g   
���iii�MENU6�   �� 5      -   5         ��Name$ go_to_data_menu��5      $	��150��62   $	��200��6?   $��25(�6K   $��0,75,0,0q�6Y   $��5q�6k   
�����F�.��6�   Vis toevoegen6�   �� 5      -   5        $ go_to_search_menu��5      $	��150��64   $	��200��6A   $��20(�6M   $��0,50,0,0q�6[   $��5q�6m   
���� �.��6�   Gegevens opzoeken6�   �� 5      -   5        $ 	afsluiten��5      $	��150��6,   $	��200��69   $��25(�6E   $��0,50,0,0q�6S   $��5q�6e   
���""��.��6�   	Afsluiten6�   5      5      �� 5   
   -   5        $ 	data_menu��5      $y�Hidden=�6*   .��5      �� 
�������.+�5      �� $��55��6   $	��650��6(   $��	0,25,0,25q�64   $��40(�6G   $ Center=�6U   $��Center=�6l   $
��Bold"�6�   $y�Visible=�6�   
���iii�Gegevens invoer6�   �� 5       �� Orientation$ 
Horizontal=�6   $��35��67   $	��650��6C   .+�5      �� $	��200��6    
�������$ Center=�6C   $��20(�6Z   $ 2q�6h   Type karper6�   �� 5      $	��200��6    $ Center=�6,   $��20(�6D   
�������$ 2q�6i   $��	250,0,0,0q�6u   	Seizoen6�   5      �� 5      $ 
Horizontal=�6   $��35��66   $	��650��6B   .+�5      �� -   5         ��Name$ combo_karper��5   +   $	��200��6   $��15(�6A   $��5q�6O   .@�5      �� $��10q�6'   $��Center=�64   $	��200��6Q   $��15(�6]   6m   �� 5      $��10q�6'   $��Center=�64   $	��200��6Q   $��15(�6]   .��6k   schub6r   �� 5      $��10q�6'   $��Center=�64   $	��200��6Q   $��15(�6]   .��6k   	spiegel6t   �� 5      $��10q�6'   $��Center=�64   $	��200��6Q   $��15(�6]   .��6k   leder6r   �� 5      $��10q�6'   $��Center=�64   $	��200��6Q   $��15(�6]   .��6k   
graskarper6w   �� 5       $��10q�6'   $��Center=�64   $	��200��6Q   $��15(�6]   .��6k   rijen6r   5!      �� 5"      -   5        $ combo_seizoen��5"   >   $	��200��6   $��	250,0,0,0q�6+   $��15(�6U   $��5q�6c   .@�5#      �� $��10q�6'   $��Center=�64   $	��200��6Q   $��15(�6]   6m   �� 5$      $��10q�6'   $��Center=�64   $	��200��6Q   $��15(�6]   
��� � �.��6~   lente6�   �� 5%      $��10q�6'   $��Center=�64   $	��200��6Q   $��15(�6]   
��� ���.��6   zomer6�   �� 5&      $��10q�6'   $��Center=�64   $	��200��6Q   $��15(�6]   
���`���.��6�   herst6�   �� 5'      $��10q�6'   $��Center=�64   $	��200��6Q   $��15(�6]   
����·�.��6�   winter6�   5(      5)      �� 5*      $ 
Horizontal=�6   $��35��66   $	��650��6B   $��0,25,0,0q�6N   .+�5+      �� $	��200��6    
�������$ Center=�6C   $��20(�6Z   $ 2q�6h   Naam karper6�   �� 5,      $	��200��6    
�������$ Center=�6C   $��20(�6Z   $ 2q�6h   $��	250,0,0,0q�6t   Datum6�   5-      �� 5.      $ 
Horizontal=�6   $��35��66   $	��650��6B   .+�5/      �� -	   5         ��Name$ tbx_naam_karper��5/      $	��200��67    �� TextAlignment$ Center=�6C   $��5q�6Z   6i   (  "System.Windows.Controls.DatePicker  50      -
   5        	  Name$	 datum_kiezer��50   !   $	��200��67   $��5q�6C   $��	250,0,0,0q�6O   
   FirstDayOfWeek$
 Monday=�6b   51      �� 52      $ 
Horizontal=�6   $��35��66   $	��650��6B   $��0,25,0,0q�6N   .+�53      �� $	��200��6    
�������$ Center=�6C   $��20(�6Z   $ 2q�6h   
Gewicht Kg6�   �� 54      $	��200��6    
�������$ Center=�6C   $��20(�6Z   $ 2q�6h   $��	250,0,0,0q�6t   Water temperatuur C°6�   55      �� 56      $ 
Horizontal=�6   $��35��66   $	��650��6B   .+�57      �� -   5        $ tbx_gewicht��57      $	��200��63   $ Center=�6?   $��5q�6V   6�   �� 58      -   5        $ tbx_tem��58      $	��200��6/   $ Center=�6;   $��5q�6R   $��	250,0,0,0q�6^   6�   59      �� 5:      $ 
Horizontal=�6   $��35��66   $	��650��6B   $��0,25,0,0q�6N   .+�5;      �� $	��200��6    
�������$ Center=�6C   $��20(�6Z   $ 2q�6h   	Lengte Cm6   �� 5<      $	��200��6    
�������$ Center=�6C   $��20(�6Z   $ 2q�6h   $��	250,0,0,0q�6t   Luchtdruk hPa6�   5=      �� 5>      $ 
Horizontal=�6   $��35��66   $	��650��6B   .+�5?      �� -   5        $ 	tbx_lenge��5?      $	��200��61   $ Center=�6=   $��5q�6T   6�   �� 5@      -   5        $ 	tbx_lucht��5@      $	��200��61   $ Center=�6=   $��5q�6T   $��	250,0,0,0q�6`   6�   5A      �� 5B      $ 
Horizontal=�6   $��35��66   $	��650��6B   $��0,25,0,0q�6N   .+�5C      �� $	��200��6    
�������$ Center=�6C   $��20(�6Z   $ 2q�6h   
Naam water6�   �� 5D      $	��200��6    
�������$ Center=�6C   $��20(�6Z   $ 2q�6h   $��	250,0,0,0q�6t   windrichting6�   5E      �� 5F      $ 
Horizontal=�6   $��35��66   $	��650��6B   .+�5G      �� -   5        $ 	tbx_water��5G      $	��200��61   $ Center=�6=   $��5q�6T   6c   �� 5H      -   5        $ 
combo_wind��5H      $	��200��63   $��	250,0,0,0q�6?   $��15(�6R   $��5q�6`   .@�5I      �� $��10q�6'   $��Center=�64   $	��200��6Q   $��15(�6]   6m   �� 5J      $��10q�6'   $��Center=�64   $	��200��6Q   $��15(�6]   .��6k   Noord6r   �� 5K      $��10q�6'   $��Center=�64   $	��200��6Q   $��15(�6]   .��6k   	NoordOost6v   �� 5L      $��10q�6'   $��Center=�64   $	��200��6Q   $��15(�6]   .��6k   Oost6q   �� 5M      $��10q�6'   $��Center=�64   $	��200��6Q   $��15(�6]   .��6k   
ZuidOost6u   �� 5N      $��10q�6'   $��Center=�64   $	��200��6Q   $��15(�6]   .��6k   Zuid6q   �� 5O      $��10q�6'   $��Center=�64   $	��200��6Q   $��15(�6]   .��6k   
zuidWest6u   �� 5P      $��10q�6'   $��Center=�64   $	��200��6Q   $��15(�6]   .��6k   West6q   �� 5Q      $��10q�6'   $��Center=�64   $	��200��6Q   $��15(�6]   .��6k   	NoordWest6v   5R      5S      �� 5T      $ 
Horizontal=�6   $��35��66   $	��650��6B   $��0,25,0,0q�6N   .+�5U      �� $	��200��6    
�������$ Center=�6C   $��20(�6Z   $ 2q�6h   
gemeente6~   �� 5V      $	��200��6    
�������$ Center=�6C   $��20(�6Z   $ 2q�6h   $��	250,0,0,0q�6t   diepte rig Meter6�   5W      �� 5X      $ 
Horizontal=�6   $��35��66   $	��650��6B   .+�5Y      �� -   5        $ combo_gemeente��5Y      $	��200��67   $��5q�6C   $��15(�6O    �� SelectedIndex$
 1448��6]   6u   �� 5Z      -   5        $ tbx_rig��5Z      $	��200��6/   $ Center=�6;   $��5q�6R   $��	250,0,0,0q�6^   6�   5[      �� 5\      $ 
Horizontal=�6   $��35��66   $	��650��6B   $��0,25,0,0q�6N   .+�5]      �� $	��200��6    
�������$ Center=�6C   $��20(�6Z   $ 2q�6h   	baiting6}   5^      �� 5_      $ 
Horizontal=�6   $��35��66   $	��650��6B   .+�5`      �� -   5        $ combo_baiting��5`      $	��200��66   $��15(�6B   $��5q�6P   .@�5a      �� $��10q�6'   $��Center=�64   $	��200��6Q   $��15(�6]   6m   �� 5b      $��10q�6'   $��Center=�64   $	��200��6Q   $��15(�6]   .��6k   pre-baiting6x   �� 5c      $��10q�6'   $��Center=�64   $	��200��6Q   $��15(�6]   .��6k   	instant6t   �� 5d      $��10q�6'   $��Center=�64   $	��200��6Q   $��15(�6]   .��6k   single hookbait6|   5e      �� 5f      -   5        $	��200��5f      $��20(�6*   $	��-15q�68   $��	250,0,0,0q�6F   
�����F�.��6�   	toevoegen6�   5g      �� 5h      $ 
Horizontal=�6   $��0,50,0,0q�66   $��70��6H   $	��650��6T   $��Center=�6`   .+�5i      �� -   5        $ terug_menu_button��5i      $	��200��68   $��50(�6D   $��Center=�6R   $	��-10q�6o   
���""��.��6�   Menu6�   �� 5j      -   5        $ naar_search_menu_button��5j      $	��200��6>   $��20(�6J   $��Center=�6X   
���� �$��	250,0,0,0q�6�   .��6�   Gegevens opzoeken6�   5k      5l      5m      �� 5n   
   -   5        $ gegevens_menu��5n      $y�Visible=�6.   .��5o      �� 
�������.+�5p      �� $	��650��6   $��55��6(   $��Center=�64   $��Center=�6O   $��40(�6l   $ Center=�6z   $��	0,25,0,25q�6�   
���iii�$
��Bold"�6�   gegevens opzoeken6�   �� 5q      $	��350��6   $��75��6(   $��30(�64   $ 10q�6B   $ Center=�6O   welke gegevens zoekt u6~   �� 5r      -   5        $ cbx_kiezen_data��5r      $��50��64   $	��250��6@   $��0,20,0,0q�6L   $��15(�6^   $��5q�6l   .@�5s      �� $��10q�6#   $��Center=�60   $	��250��6M   $��15(�6Y   .��6g   type karper6t   �� 5t      $��10q�6#   $��Center=�60   $	��250��6M   $��15(�6Y   .��6g   naam karper6t   �� 5u      $��10q�6#   $��Center=�60   $	��250��6M   $��15(�6Y   .��6g   	gewicht6p   �� 5v      $��10q�6#   $��Center=�60   $	��250��6M   $��15(�6Y   .��6g   	seizoen6p   �� 5w      $��10q�6#   $��Center=�60   $	��250��6M   $��15(�6Y   .��6g   
naam water6s   �� 5x      $��10q�6#   $��Center=�60   $	��250��6M   $��15(�6Y   .��6g   
gemeente6q   5y      �� 5z      -   5         ��Name$ tbx_detail_keuze��5z      $��50��66   $	��250��6B   $��0,5,0,0q�6N   $ Center=�6_   $��15(�6v   $y�Hidden=�6�   6�   �� 5{      -   5        $ cmb_detail_keuze_selectie��5{      $��50��6>   $	��250��6J   $��0,5,0,0q�6V   $y�Visible=�6g   6|   �� 5|      -   5         ��Name$ lvw_data��5|      $	��250��6-   $	��400��6:   $��0,15,0,0q�6F   
������  �� View 5}      �� 5~      .P�5      �� $��type karper��6-    �� Width$ 75��6B    �� DisplayMemberBinding 6M   �� *type_karper+6|   �� 5�      $��naam karper��6-   $ 75��6B    6M   �� *naam_karper+6|   �� 5�      $��gewicht��6-   $ 50��6>    6I   �� *	gewicht+6t   �� 5�      $��seizoen��6-   $ 50��6>    6I   �� *	seizoen+6t   �� 5�      $��
naam water��6-   $ 75��6A    6L   �� *
water_naam+6z   �� 5�      $��gemeente��6-   $ 60��6?    6J   �� *gemeente_naam+6{   5�      5�      �� 5�      $ 
Horizontal=�6   $��0,50,0,0q�66   $	��400��6H   .+�5�      �� -   5        $ 	naar_menu��5�      $	��100��60   $	��100��6=   $��38(�6I   
���""��.��6�   menu6�   �� 5�      -   5        $ naar_data_menu��5�      $	��100��65   $	��200��6B   $��	100,0,0,0q�6N   $��40(�6a   
�����F�.��6�   	data menu6�   5�      5�      5�      5�      5�      