   M S B A M L   `   `   `  ����P  LMinecraftOutClientWPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null=#clr-namespace:MinecraftOutClientWPFMinecraftOutClientWPF  5   	   H DMahApps.Metro, Version=1.6.5.1, Culture=neutral, PublicKeyToken=nullV;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.MetroMahApps.Metro.Controls 5   	   &     MinecraftOutClientWPF.MainWindow   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   5local#clr-namespace:MinecraftOutClientWPF     5   	   PControls;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.Metro     5   	   R NMahApps.Metro.IconPacks, Version=2.3.0.4, Culture=neutral, PublicKeyToken=null=	iconPacks-http://metro.mahapps.com/winfx/xaml/iconpacks  5   	     � Title$  MinecraftOutClient WPF��5
   	   $	��450��6(   $	��800��65      AccentColorBrush(  "MahApps.Metro.Controls.MetroWindow   	GlowBrush# �   6A    � 
ResizeMode$ CanMinimize=�6p    � WindowStartupLocation$ CenterScreen=�6�      	TitleCaps .     RightWindowCommands 5      +  %MahApps.Metro.Controls.WindowCommands  5   
   .@�5      �� -   5         ��Name$ Button_About��5       � Cursor$
 Hand��6+   .��5      ��  �� Orientation$ 
Horizontal=�6   .+�5      1  +MahApps.Metro.IconPacks.PackIconFontAwesome  E AControlzEx, Version=3.0.2.4, Culture=neutral, PublicKeyToken=null�  �ControlzEx.PackIconBase`1[[MahApps.Metro.IconPacks.PackIconFontAwesomeKind, MahApps.Metro.IconPacks, Version=2.3.0.4, Culture=neutral, PublicKeyToken=null]]	   Kind$	 InfoCircleSolid=�64   �� 5      $��4 0 0 0q�6    $��Center=�61   $��关于��6L   5      5      5      .��5      � .+�5   
   �� $
��Left=�6   $	��421��60   $	��Top=�6=   $	��794��6U   
 �� TabStripPlacement$
 Bottom=�6a   .@�5      �� -   5         ��Name$ TabItem_Start��5      $��开始��6-   +  %MahApps.Metro.Controls.ControlsHelper   HeaderFontSize$ 6Q�69   .��5      � .+�5      �� -   5         ��Name$ 
TextBox_IP��5      $
��Left=�62   $��40��6M   $��244,170,0,0q�6Y    �� TextWrapping$
 Wrap=�6n   $��	127.0.0.1��6�   $	��Top=�6�   $	��210��6�   $��Microsoft YaHei)�6�   $��16(�6�   $��Center=�6�   $
��Bold"�6  �� 5      -   5        $ TextBox_Port��5      $��40��64   $��470,170,0,0q�6@   $
 Wrap=�6U   $��25565��6i   $	��Top=�6v   $��Center=�6�   $��Microsoft YaHei)�6�   $��16(�6�   $
��Bold"�6�   $
��Left=�6�   $��80��6  �� 5      $��:��6   $
��Left=�6(   $��40��6C   $��457,170,0,0q�6O   $	��Top=�6d   $��10��6|   $��24(�6�   $��0,3,0,0q�6�   $��Center=�6�   �� 5      -   5        $ Button_Check��5      $��359,230,359,0q�63     MetroCircleButtonStyle#���  6J   $
 Hand��6|   $��1q�6�     AccentColorBrush2#���  6�   
�������$��70��6�   $	��Top=�6�   $��70��6�   .��5      .  (MahApps.Metro.IconPacks.PackIconOcticons  �  �ControlzEx.PackIconBase`1[[MahApps.Metro.IconPacks.PackIconOcticonsKind, MahApps.Metro.IconPacks, Version=2.3.0.4, Culture=neutral, PublicKeyToken=null]]   Kind$ Check=�65   $��30��6B   $��30��6M   
�������$��0q�6l   $��0q�6x   $
��Left=�6�   5      �� 5      -   5         ��Name$ 	Label_Tip��5      $&�� 请输入要查询的IP与端口��6/   $��55��6F   $��	0,100,0,0q�6R   $	��Top=�6e   $��Center=�6}   $��Center=�6�   $��24(�6�   5       5!      �� 5"      -   5        $ TabItem_End��5"      $��结束��6+   $ 6Q�67   .��5#      � .+�5$      �� -   5        $ Label_Server��5$      $��当前服务器:��62   $��32��6C   $	��Top=�6O   $��20(�6g   $��Center=�6u   $	��5,0q�6�   $
��Left=�6�   $	��746��6�   �� 5%      -	   5        $ TextBox_Info��5%      $p��j服务器Protocol版本:
服务器游戏版本:
服务器在线人数:
服务器延迟:
服务器MOTD:��64   $	��130��6�   $��10,37,145,0q�6�   $	��Top=�6�   $��14(�6�   $��0q�6�    �� 
IsReadOnly . $
 Wrap=�6�   $��Microsoft YaHei)�6
  �� 5&      $	��229��6!   $��10,172,10,0q�6.   $	��Top=�6C   .@�5'      �� $��玩家列表��6"   $ 16Q�60   .��5(      � 
�������.+�5)   "   �� -
   5         ��Name$ ListBox_Player��5)   *   � 5*   "   -   5         �Name$ Grid_NoPlayer��5*   '   $��146,34q�6>   $	��470��6N   .+�5+   &     $	 InfoCircleSolid=�6D   $��80��6[   $
��Auto��6g   $��195,10,195,0q�6t   $��Stretch=�6�   $��3q�6�   �� 5,   &   $��当前无玩家��6,   $��40��6<   $��Bottom=�6H   $��Center=�6c   $��20(�6�   $��Center=�6�   5-   #   5.      5/      �� 50      $��模组列表��6"   $ 16Q�60   .��51      � 
�������.+�52   "   �� -   5        $ ListBox_Mods��52   *   � 53   "   -   5        $ Grid_NoMods��53   '   $��146,34q�6<   $	��470��6L   .+�54   &     $	 InfoCircleSolid=�6D   $��80��6[   $
��Auto��6g   $��195,10,195,0q�6t   $��Stretch=�6�   $��3q�6�   �� 55   &   $��当前无模组��6,   $��40��6<   $��Bottom=�6H   $��Center=�6c   $��20(�6�   $��Center=�6�   56   #   57      58      59      �� 5:      -   5        $ Button_Back��5:      $��751,-3,-3,0q�62   #���  6G   $
 Hand��6y   $��-2,1,1,1q�6�   #���  6�   
�������$��40��6�   $	��Top=�6�   $��40��6  .��5;        $	 AngleLeftSolid=�68   
�������6N   5<      �� 5=      -   5         ��Name$ img_servericon��5=      $	��130��64   $��	0,37,10,0q�6A   $	��Top=�6T   $��Right=�6l   $	��130��6�   $��img/servericon.png��6�   $��UniformToFill=�6�   5>      5?      �� 5@      -   5        $ TabItem_About��5@      $��关于��6-   $ 6Q�69   .��5A      � .+�5B      �� $	��130��6   $	��Top=�6)   $��img/servericon.png��6A   $
��None=�6]   $��0,40,0,0q�6l   �� 5C      $��NullCraft Studio��6   $��52��67   $��	0,144,0,0q�6C   $	��Top=�6V   ���	#FF2BC7AC$��24(�6�   $��Center=�6�   $��Center=�6�   �� 5D      $��制作:FastChen��6   $��36��62   $��	0,196,0,0q�6>   $	��Top=�6Q   $��20(�6i   $��Center=�6w   $��Center=�6�   �� 5E      $D��>开源地址:https://github.com/FastChen/MinecraftOutClientWPF��6   $��36��6]   $��	0,232,0,0q�6i   $	��Top=�6|   $��16(�6�   $��Center=�6�   $��Center=�6�   �� 5F      $"��调用库:MinecraftOutClient��6   $��36��6=   $��	0,268,0,0q�6I   $	��Top=�6\   $��20(�6t   $��Center=�6�   $��Center=�6�   �� 5G      $>��8开源地址:https://github.com/Nsiso/MinecraftOutClient��6   $��36��6W   $��	0,304,0,0q�6c   $	��Top=�6v   $��16(�6�   $��Center=�6�   $��Center=�6�   �� 5H      -   5        $ Button_BackHome��5H      $��751,-3,-3,0q�66   #���  6K   $
 Hand��6}   $��-2,1,1,1q�6�   #���  6�   
�������$��40��6�   $	��Top=�6�   $��40��6  .��5I        $	 AngleLeftSolid=�68   
�������6N   5J      5K      5L      5M      5N      5O      