using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Hospital
{
    public partial class Loginas : Form
    {
        
        public Loginas()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            
        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Hide();
           // Nprofile np = new Nprofile();
           // ((TextBox)np.Controls["textBox9"]).Text = "1";

            Login l = new Login();
            ((TextBox)l.Controls["textBox3"]).Text = "Doctor";
            l.Show();

            ((TextBox)l.Controls["textBox1"]).Text = "Enter Phone Number";
            l.Show();
        }

        private void button5_Click(object sender, EventArgs e)
        {
            this.Hide();
          //  Nprofile np = new Nprofile();
           // ((TextBox)np.Controls["textBox9"]).Text = "2";

            Login l = new Login();
            ((TextBox)l.Controls["textBox3"]).Text = "Pharmacist";
            l.Show();

            ((TextBox)l.Controls["textBox1"]).Text = "Enter Phone Number";
            l.Show();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            this.Hide();
           // Nprofile np = new Nprofile();
           // ((TextBox)np.Controls["textBox9"]).Text = "3";

            Login l = new Login();
            ((TextBox)l.Controls["textBox3"]).Text = "Nurse";
            l.Show();

            ((TextBox)l.Controls["textBox1"]).Text = "Enter Phone Number";
            l.Show();
        }

        private void button4_Click(object sender, EventArgs e)
        {
            this.Hide();
           // Nprofile np = new Nprofile();
           // ((TextBox)np.Controls["textBox9"]).Text = "4";

            Login l = new Login();
            ((TextBox)l.Controls["textBox3"]).Text = "Receptionist";
            l.Show();

            ((TextBox)l.Controls["textBox1"]).Text = "Enter Phone Number";
            l.Show();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.Hide();
           // Nprofile np = new Nprofile();
           // ((TextBox)np.Controls["textBox9"]).Text = "5";

            Login l = new Login();
            ((TextBox)l.Controls["textBox3"]).Text = "Accountant";
            l.Show();

            ((TextBox)l.Controls["textBox1"]).Text = "Enter Phone Number";
            l.Show();
        }

        private void button7_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void button8_Click(object sender, EventArgs e)
        {
            this.Hide();
            Login l = new Login();
            ((TextBox)l.Controls["textBox3"]).Text = "Admin";
            l.Show();

            ((TextBox)l.Controls["textBox1"]).Text = "Admin";
            ((TextBox)l.Controls["textBox1"]).ReadOnly = true;
            ((TextBox)l.Controls["textBox1"]).Enabled = false;

            l.Show();
        }
    }
}


