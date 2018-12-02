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
    /// Interaction logic for Window2.xaml
    /// </summary>
    public partial class Window2 : Window
    {
        

        public Window2()
        {
            InitializeComponent();

            DataTable aukcijeTable = new DataTable();
            SqlConnection conn = new SqlConnection(@"Data Source=.;Initial Catalog=Aukcija;Integrated Security=True");
            SqlDataAdapter aukcDa = new SqlDataAdapter("select * from Podaci", conn);

            aukcDa.Fill(aukcijeTable);
            aukcija_bazeDataGrid1.DataContext = aukcijeTable;

            System.Windows.Threading.DispatcherTimer dispatcherTimer = new System.Windows.Threading.DispatcherTimer();
            dispatcherTimer.Tick += dispatcherTimer_Tick;
            dispatcherTimer.Interval = new TimeSpan(0, 0, 1);
            dispatcherTimer.Start();

        }
        private void Window_Loaded_1(object sender, RoutedEventArgs e)
        {

            
        }
        private void dispatcherTimer_Tick(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection())
            {
                conn.ConnectionString = (@"Data Source=.;Initial Catalog=Aukcija;Integrated Security=True");
                conn.Open();
                SqlCommand cmd = new SqlCommand("UPDATE * SET Podaci=@Podaci",conn );
     
                cmd.ExecuteNonQuery();
            }
        }

        private void button_Click(object sender, RoutedEventArgs e)
        {
            using (SqlConnection conn = new SqlConnection())
            {
                conn.ConnectionString = (@"Data Source=.;Initial Catalog=Aukcija;Integrated Security=True");

                SqlCommand command = conn.CreateCommand();
                command.CommandType = CommandType.StoredProcedure;
                command.CommandText = "povecajzajedan";
                command.Parameters.AddWithValue("@IdProizvoda",1);
                conn.Open();
                command.ExecuteNonQuery();
            }
        }
        private void aukcija_bazeDataGrid1_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }

        private void button1_Click(object sender, RoutedEventArgs e)
        {
            using (SqlConnection conn = new SqlConnection())
            {
                conn.ConnectionString = (@"Data Source=.;Initial Catalog=Aukcija;Integrated Security=True");

                SqlCommand command = conn.CreateCommand();
                command.CommandType = CommandType.StoredProcedure;
                command.CommandText = "povecajzajedan";
                command.Parameters.AddWithValue("@IdProizvoda", 2);
                conn.Open();
                command.ExecuteNonQuery();
            }
        }

        private void button2_Click(object sender, RoutedEventArgs e)
        {
            using (SqlConnection conn = new SqlConnection())
            {
                conn.ConnectionString = (@"Data Source=.;Initial Catalog=Aukcija;Integrated Security=True");

                SqlCommand command = conn.CreateCommand();
                command.CommandType = CommandType.StoredProcedure;
                command.CommandText = "povecajzajedan";
                command.Parameters.AddWithValue("@IdProizvoda", 3);
                conn.Open();
                command.ExecuteNonQuery();
            }
        }

        private void button3_Click(object sender, RoutedEventArgs e)
        {
            using (SqlConnection conn = new SqlConnection())
            {
                conn.ConnectionString = (@"Data Source=.;Initial Catalog=Aukcija;Integrated Security=True");

                SqlCommand command = conn.CreateCommand();
                command.CommandType = CommandType.StoredProcedure;
                command.CommandText = "povecajzajedan";
                command.Parameters.AddWithValue("@IdProizvoda", 4);
                conn.Open();
                command.ExecuteNonQuery();
            }
        }

        private void button4_Click(object sender, RoutedEventArgs e)
        {
            using (SqlConnection conn = new SqlConnection())
            {
                conn.ConnectionString = (@"Data Source=.;Initial Catalog=Aukcija;Integrated Security=True");

                SqlCommand command = conn.CreateCommand();
                command.CommandType = CommandType.StoredProcedure;
                command.CommandText = "povecajzajedan";
                command.Parameters.AddWithValue("@IdProizvoda", 5);
                conn.Open();
                command.ExecuteNonQuery();
            }
        }

        private void button5_Click(object sender, RoutedEventArgs e)
        {
            using (SqlConnection conn = new SqlConnection())
            {
                conn.ConnectionString = (@"Data Source=.;Initial Catalog=Aukcija;Integrated Security=True");

                SqlCommand command = conn.CreateCommand();
                command.CommandType = CommandType.StoredProcedure;
                command.CommandText = "povecajzajedan";
                command.Parameters.AddWithValue("@IdProizvoda", 6);
                conn.Open();
                command.ExecuteNonQuery();
            }
        }

       
        
    }
}
