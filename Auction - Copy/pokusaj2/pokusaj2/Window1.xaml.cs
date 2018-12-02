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
using System.Windows.Threading;

namespace pokusaj2
{
    /// <summary>
    /// Interaction logic for Window1.xaml
    /// </summary>
    public partial class Window1 : Window
    {
        public Window1()
        {
            
            InitializeComponent();

            DataTable aukcijeTable = new DataTable();
            SqlConnection conn = new SqlConnection(@"Data Source=.;Initial Catalog=Aukcija;Integrated Security=True");
            SqlDataAdapter aukcDa = new SqlDataAdapter("select * from Podaci", conn);

            aukcDa.Fill(aukcijeTable);
            aukcija_bazeDataGrid1.DataContext = aukcijeTable;
        }
      

        private void button_Click(object sender, RoutedEventArgs e)
        {
            this.Hide();
            Window3 w3 = new Window3();
            w3.ShowDialog();
        }

        private void button1_Click(object sender, RoutedEventArgs e)
        {
            string Naziv = textBox.Text;

            using (SqlConnection connec = new SqlConnection())
            {
                connec.ConnectionString = (@"Data Source=.;Initial Catalog=Aukcija;Integrated Security=True");
                SqlCommand cmd = new SqlCommand("DELETE from Podaci WHERE Naziv=@Naziv", connec);
                cmd.CommandType = CommandType.Text;
                cmd.Connection = connec;
                cmd.Parameters.AddWithValue("@Naziv", textBox.Text);          
                connec.Open();
                cmd.ExecuteNonQuery();                
                connec.Close();             
                
            }
            
        }

        private void aukcija_bazeDataGrid1_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }
    }
}
