using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using MahApps.Metro.Controls;
using MinecraftOutClient.Modules;

namespace MinecraftOutClientWPF
{
    /// <summary>
    /// MainWindow.xaml 的交互逻辑
    /// </summary>
    public partial class MainWindow : MetroWindow
    {
        public MainWindow()
        {
            InitializeComponent();
            TabItem_Start.Visibility = Visibility.Hidden;
            TabItem_End.Visibility = Visibility.Hidden;
            TabItem_About.Visibility = Visibility.Hidden;
        }

        private void Button_Check_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                ListBox_Player.Items.Clear();
                ListBox_Mods.Items.Clear();
                Label_Server.Content = "当前服务器:" + TextBox_IP.Text + ":" + int.Parse(TextBox_Port.Text);
                //连接服务器
                ServerInfo info = new ServerInfo(TextBox_IP.Text, int.Parse(TextBox_Port.Text));
                //获取服务器信息
                info.StartGetServerInfo();
                TextBox_Info.Text = "服务器Protocol版本:" + info.ProtocolVersion + "\n服务器游戏版本:" + info.GameVersion + "\n服务器在线人数:" + info.MaxPlayerCount + "/" + info.CurrentPlayerCount + "\n服务器延迟:" + info.Ping + "\n服务器MOTD:" + info.MOTD;
                //获取玩家
                if (info.OnlinePlayersName != null && info.OnlinePlayersName.Any())
                {
                    foreach (var player in info.OnlinePlayersName)
                    {
                        ListBox_Player.Items.Add(player);
                        Console.WriteLine("玩家:" + player);
                    }
                    Grid_NoPlayer.Visibility = Visibility.Hidden;
                }
                else
                {
                    Grid_NoPlayer.Visibility = Visibility.Visible;
                }
                //获取模组
                if (info.ForgeInfo != null && info.ForgeInfo.Mods.Any())
                {
                    foreach (var mods in info.ForgeInfo.Mods)
                    {
                        ListBox_Mods.Items.Add(mods);
                        Console.WriteLine("MOD:" + mods);
                    }
                    Grid_NoMods.Visibility = Visibility.Hidden;
                }
                else
                {
                    Grid_NoMods.Visibility = Visibility.Visible;
                }
                //获取服务器Icon
                if (info.Icon != null)
                {
                    info.Icon.Save("icon.png");
                    img_servericon.Source = new BitmapImage(new Uri(Environment.CurrentDirectory + "/icon.png"));
                }
                else
                {
                    img_servericon.Source = new BitmapImage(new Uri("pack://application:,,,/img/servericon.png"));
                }
                TabItem_End.IsSelected = true;
            }
            catch
            {
                Label_Tip.Content = "请输入正确的IP或端口";
                TabItem_Start.IsSelected = true;
                Grid_NoPlayer.Visibility = Visibility.Visible;
                Grid_NoMods.Visibility = Visibility.Visible;
            }
        }

        private void Button_Back_Click(object sender, RoutedEventArgs e)
        {
            TabItem_Start.IsSelected = true;
        }

        private void Button_About_Click(object sender, RoutedEventArgs e)
        {
            TabItem_About.IsSelected = true;
        }

        private void Button_BackHome_Click(object sender, RoutedEventArgs e)
        {
            TabItem_Start.IsSelected = true;
        }
    }
}