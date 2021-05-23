using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using Microsoft.EntityFrameworkCore;
using System.Data.SQLite;


namespace project
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private List<registratie> registraties { get; set; } = new List<registratie> { };
        private List<gemeente> gemeentes { get; set; } = new List<gemeente> { };
        private List<karper> karpers { get; set; } = new List<karper> { };
        private List<water> waters { get; set; } = new List<water> { };
        private List<vangst> vangsten { get; set; } = new List<vangst> { };
        public MainWindow()
        {
            InitializeComponent();
            using (var db = new ShopContext())
            {
                registraties = db.registraties.ToList();
                gemeentes = db.gemeentes.ToList();
                karpers = db.karpers.ToList();
                waters = db.waters.ToList();
                vangsten = db.vangsten.ToList();
            }
        }
        private void data_toevoegen(object sender, RoutedEventArgs e)
        {
            using (var db = new ShopContext())
            {
                nul_waarde();
                db.Add(new karper { type_karper = combo_karper.Text, naam_karper = tbx_naam_karper.Text, gewicht = float.Parse(tbx_gewicht.Text), lengte = float.Parse(tbx_lenge.Text) });
                db.Add(new registratie { seizoen = combo_seizoen.Text, vangst_tijd = DateTime.Parse(datum_kiezer.Text), water_temperatuur = float.Parse(tbx_tem.Text), luchtdruk = int.Parse(tbx_lucht.Text), windrichting = combo_wind.Text, diepte_rig = float.Parse(tbx_rig.Text), baiting = combo_baiting.Text });
                db.Add(new water { naam = tbx_water.Text, gemeente_id = id_gemeente()});
                db.SaveChanges();
                registratie_id();
                clear_invoer();
                MessageBox.Show("Data toegevoegd");
            }
        }
        private int id_gemeente()
        {
            using(var db = new ShopContext())
            {

                var m = db.gemeentes;
                var id = m.Where(g => g.gemeente_naam == combo_gemeente.Text);
                var id1 = id.Select(i => i.gemeente_id).First();
                return id1;
            }
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            using (var db = new ShopContext())
            {
                var m = db.gemeentes;
                var gm = m.Select(g => g.gemeente_naam);
                foreach (var gemeente in gm)
                {
                    combo_gemeente.Items.Add(gemeente);
                }
            }
        }
        private void go_to_data_menu_Click(object sender, RoutedEventArgs e)
        {
            menu.Visibility = Visibility.Hidden;
            data_menu.Visibility = Visibility.Visible;
        }

        private void afsluiten_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }
        private void nul_waarde()
        {
            float g = 0;
            if (tbx_gewicht.Text == "")
            {
                tbx_gewicht.Text = g.ToString();
            }
            if (tbx_lenge.Text == "")
            {
                tbx_lenge.Text = g.ToString();
            }
            if (datum_kiezer.Text == "")
            {
                datum_kiezer.Text = DateTime.Now.ToString();
            }
            if (tbx_tem.Text == "")
            {
                tbx_tem.Text = g.ToString();
            }
            if (tbx_lucht.Text == "")
            {
                tbx_lucht.Text = g.ToString();
            }
            if (tbx_rig.Text == "")
            {
                tbx_rig.Text = g.ToString();
            }
        }
        private void registratie_id()
        {
            using (var db = new ShopContext())
            {
                var k = db.karpers.OrderBy(x => x.karper_id).Last();
                var k_id = k.karper_id;
                var r = db.registraties.OrderBy(x => x.registratie_id).Last();
                var r_id = r.registratie_id;
                var w = db.waters.OrderBy(x => x.water_id).Last();
                var w_id = w.water_id;
                db.Add(new vangst { karper_id = k_id, registratie_id = r_id, water_id = w_id });
                db.SaveChanges();
            }
        }
        private void clear_invoer()
        {
            combo_karper.SelectedIndex = -1;
            combo_seizoen.SelectedIndex = -1;
            combo_gemeente.SelectedIndex = -1;
            combo_seizoen.SelectedIndex = -1;
            combo_wind.SelectedIndex = -1;
            combo_baiting.SelectedIndex = -1;

            tbx_naam_karper.Clear();
            tbx_water.Clear();
            tbx_gewicht.Clear();
            tbx_tem.Clear();
            tbx_lenge.Clear();
            tbx_lucht.Clear();
            tbx_rig.Clear();
        }
        private void terug_menu_button_Click(object sender, RoutedEventArgs e)
        {
            menu.Visibility = Visibility.Visible;
            data_menu.Visibility = Visibility.Hidden;
            clear_invoer();
        }
        private void naar_search_menu_button_Click(object sender, RoutedEventArgs e)
        {
            menu.Visibility = Visibility.Hidden;
            data_menu.Visibility = Visibility.Hidden;
            gegevens_menu.Visibility = Visibility.Visible;
            clear_invoer();
        }
        private void tbx_rig_TextChanged(object sender, TextChangedEventArgs e)
        {
            float floatrig;
            if (tbx_rig.Text != "")
            {
                try
                {
                    floatrig = float.Parse(tbx_rig.Text);
                }
                catch (FormatException)
                {
                    MessageBox.Show("gelieven enkel een getal in te geven");
                    tbx_rig.Clear();
                    return;
                }
            }
        }
        private void tbx_gewicht_TextChanged(object sender, TextChangedEventArgs e)
        {
            float fltgewicht;
            if (tbx_gewicht.Text != "")
            {
                try
                {
                    fltgewicht = float.Parse(tbx_gewicht.Text);
                }
                catch (FormatException)
                {
                    MessageBox.Show("gelieven enkel een getal in te geven");
                    tbx_gewicht.Clear();
                    return;
                }
            }
        }
        private void tbx_tem_TextChanged(object sender, TextChangedEventArgs e)
        {
            float flttem;
            if (tbx_tem.Text != "")
            {
                try
                {
                    flttem = float.Parse(tbx_tem.Text);
                }
                catch (FormatException)
                {
                    MessageBox.Show("gelieven enkel een getal in te geven");
                    tbx_tem.Clear();
                    return;
                }

            }
        }
        private void tbx_lenge_TextChanged(object sender, TextChangedEventArgs e)
        {
            float fltlengte;
            if (tbx_lenge.Text != "")
            {
                try
                {
                    fltlengte = float.Parse(tbx_lenge.Text);
                }
                catch (FormatException)
                {
                    MessageBox.Show("gelieven enkel een getal in te geven");
                    tbx_lenge.Clear();
                    return;
                }
            }
        }
        private void tbx_lucht_TextChanged(object sender, TextChangedEventArgs e)
        {
            int intluchtdruk;
            if (tbx_lucht.Text != "")
            {
                try
                {
                    intluchtdruk = int.Parse(tbx_lucht.Text);
                }
                catch (FormatException)
                {
                    MessageBox.Show("gelieven enkel een getal in te geven");
                    tbx_lucht.Clear();
                    return;
                }
            }
        }

        private void go_to_search_menu_Click(object sender, RoutedEventArgs e)
        {
            menu.Visibility = Visibility.Hidden;
            data_menu.Visibility = Visibility.Hidden;
            gegevens_menu.Visibility = Visibility.Visible;
        }

        private void cbx_kiezen_data_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            using (var db = new ShopContext())
            {
                Debug.WriteLine(cbx_kiezen_data.Text);
                if (cbx_kiezen_data.Text == "type karper")
                {
                    cmb_detail_keuze_selectie.Visibility = Visibility.Visible;
                    var type_karper = db.karpers.Select(k => k.type_karper).Where(k => k != "");
                    foreach (var karpers in type_karper)
                    {
                        cmb_detail_keuze_selectie.Items.Add(karpers);
                    }
                }
                else if (cbx_kiezen_data.Text == "naam karper")
                {

                }
                else if (cbx_kiezen_data.Text == "gewicht")
                {

                }
                else if (cbx_kiezen_data.Text == "seizoen")
                {

                }
                else if (cbx_kiezen_data.Text == "naam water")
                {

                }
                else if (cbx_kiezen_data.Text == "gemeente")
                {

                }
            }
        }
    }
}
