using System;
using System.Collections.Generic;
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
using System.Windows.Shapes;
using System.Data;
using System.Data.SqlClient;

namespace pokusaj2
{
    /// <summary>
    /// Interaction logic for Window3.xaml
    /// </summary>
    public partial class Window3 : Window
    {
        public Window3()
        {
            InitializeComponent();
        }

        private void button_Click(object sender, RoutedEventArgs e)
        {
            string IdProizvoda = textBox.Text;
            string Naziv = textBox1.Text;
            string PocetnaCijena = textBox2.Text;
            string ZadnjaCijena = textBox3.Text;
            string ZadnjaPonuda = textBox4.Text;

            using (SqlConnection connec = new SqlConnection())
            {
                connec.ConnectionString = (@"Data Source=.;Initial Catalog=Aukcija;Integrated Security=True");
                SqlCommand cmd = new SqlCommand("INSERT INTO Podaci (IdProizvoda, Naziv, PocetnaCijena, ZadnjaCijena, ZadnjaPonuda) VALUES (@IdProizvoda, @Naziv, @PocetnaCijena, @ZadnjaCijena, @ZadnjaPOnuda)");
                cmd.CommandType = CommandType.Text;
                cmd.Connection = connec;
                cmd.Parameters.AddWithValue("@IdProizvoda", textBox.Text);
                cmd.Parameters.AddWithValue("@Naziv", textBox1.Text);
                cmd.Parameters.AddWithValue("@PocetnaCijena", textBox2.Text);
                cmd.Parameters.AddWithValue("@ZadnjaCijena", textBox3.Text);
                cmd.Parameters.AddWithValue("@ZadnjaPonuda", textBox4.Text);
                connec.Open();
                cmd.ExecuteNonQuery();
            }
        }
    }
}
