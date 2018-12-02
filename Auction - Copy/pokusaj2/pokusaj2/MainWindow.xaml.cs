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
using System.Data.SqlClient;
using System.Data;
using System.Windows.Threading;

namespace pokusaj2
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
 
        public MainWindow()
        {
            InitializeComponent();
            

            DataTable aukcijeTable = new DataTable();
            SqlConnection conn = new SqlConnection(@"Data Source=.;Initial Catalog=Aukcija;Integrated Security=True");
            SqlDataAdapter aukcDa = new SqlDataAdapter("select * from Podaci", conn);

            aukcDa.Fill(aukcijeTable);
            aukcija_bazeDataGrid.DataContext = aukcijeTable;


        }
        private void button1_Click(object sender, RoutedEventArgs e)
        {
            
            string UserName = textBox.Text;
            string Password = textBox1.Text;

            SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=Admin;Integrated Security=True");
            con.Open();

            if (textBox.Text == "" || textBox1.Text == "")
            {
                MessageBox.Show("Please provide UserName and Password");
                return;
            }
            try
            {

                SqlCommand cmd = new SqlCommand("Select * from tbl_Login where UserName=@username and Password=@password", con);
                cmd.Parameters.AddWithValue("@username", textBox.Text);
                cmd.Parameters.AddWithValue("@password", textBox1.Text);

                SqlDataAdapter adapt = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                adapt.Fill(ds);
                con.Close();
                int count = ds.Tables[0].Rows.Count;
                if (count == 1)
                {
                    MessageBox.Show("Login Successful!");
                    this.Hide();
                    Window1 w1 = new Window1();
                    w1.ShowDialog();
               }
               else
               {
                    this.Hide();
                    Window2 w2 = new Window2();
                    w2.ShowDialog();
               }

            }

            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            con.Close();
        }




        private void aukcija_bazeDataGrid_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {


        }

        private void textBox_TextChanged(object sender, TextChangedEventArgs e)
        {

        }

        private void textBox1_TextChanged(object sender, TextChangedEventArgs e)
        {

        }
    }
}
